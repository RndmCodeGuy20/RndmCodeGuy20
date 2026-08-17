#!/usr/bin/env bash
set -euo pipefail

# Ranks personal repos by commit count in the trailing 7 days and rewrites
# the `now` section of README.md between its markers.

USERNAME="RndmCodeGuy20"
SINCE=$(date -u -d '7 days ago' +%Y-%m-%d 2>/dev/null || date -u -v-7d +%Y-%m-%d)
README="$(dirname "$0")/../README.md"

commits_json=$(gh api "search/commits?q=author:${USERNAME}+author-date:>${SINCE}&per_page=100" \
  --jq '.items[].repository.full_name')

top5=$(echo "$commits_json" \
  | grep "^${USERNAME}/" \
  | sort | uniq -c | sort -rn \
  | head -5)

tmp=$(mktemp)
{
  echo "<!--START_SECTION:now-->"
  while read -r count repo; do
    [ -z "$repo" ] && continue
    name="${repo#*/}"
    plural="commits"
    [ "$count" -eq 1 ] && plural="commit"
    echo "- ${name} → https://github.com/${repo}, ${count} ${plural} this week"
  done <<< "$top5"
  echo "<!--END_SECTION:now-->"
} > "$tmp"

awk -v newfile="$tmp" '
  /<!--START_SECTION:now-->/ { while ((getline line < newfile) > 0) print line; skip=1; next }
  /<!--END_SECTION:now-->/ { skip=0; next }
  !skip { print }
' "$README" > "$README.tmp2" && mv "$README.tmp2" "$README"
rm -f "$tmp"
