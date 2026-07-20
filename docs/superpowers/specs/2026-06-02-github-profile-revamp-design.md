# GitHub Profile README Revamp

**Date:** 2026-06-02  
**Branch:** feat/profile-revamp  
**Status:** approved

---

## Goal

Bring the GitHub profile README to the same design quality as the main portfolio (notebook.rndmcode.in) — sleek, modern, slightly geeky, with a defined personality. Apply the existing design system (tokens.css) as faithfully as the GitHub markdown renderer allows.

---

## Constraints

GitHub README renders a subset of HTML + Markdown. Specifically:
- No `<style>` blocks (stripped)
- No custom fonts via CSS (ignored)
- `align` attribute works on `<p>`, `<div>`, `<img>`, `<table>`
- `<table>` usable for multi-column layout
- SVGs hosted in-repo render inline (can embed design-system colors directly)
- External image URLs render live (github-readme-stats cards)

---

## Structure

```
[hero image — existing asset, unchanged]

---

engineer / tinkerer / builder
i build systems that are predictable, observable, and slightly over-engineered on purpose.

---

## now
- building a leetcode-like ML judge with sandboxed execution (go + containers)
- exploring observability (opentelemetry, lgtm stack)
- refining server-driven UI systems

---

## work
- **nudge core** — server-driven UI + templating + runtime orchestration
- **og image pipeline** — browser-rendered visuals using workers + edge compute
- **ml judge system** — containerized execution engine for evaluating models/code

---

## activity
[3D contribution heatmap — full width]
[GitHub stats card]    [WakaTime card]   ← <table>, side by side

---

## notes
i document how things actually work — failures included.
→ https://notebook.rndmcode.in

---

## contact
- site → https://notebook.rndmcode.in
- mail → maneshantanu.20@gmail.com
- github → you're already here
```

---

## Visual System

### Design tokens (from tokens.css)

| Token | Value | Role |
|---|---|---|
| `--bg` | `#0E0E0D` | Card/SVG background |
| `--bg-surface` | `#161614` | Card border color |
| `--bg-raised` | `#1C1C1A` | Subtle surface |
| `--text` | `#E8E6DF` | Primary text |
| `--text-muted` | `#6B6960` | Secondary / muted text |
| `--text-faint` | `#3A3935` | Low-contrast level |
| `--accent` | `#C8B89A` | Titles, icons, ring, highlights |

### 3D Contribution Heatmap

Action: `yoshi389111/github-profile-3d-contrib@0.7.1`  
Customisation: `SETTINGS_JSON` env var in `profile-3d.yml`

```json
{
  "type": "normal",
  "fileName": "profile-customize.svg",
  "backgroundColor": "#0E0E0D",
  "foregroundColor": "#E8E6DF",
  "strongColor": "#C8B89A",
  "weakColor": "#6B6960",
  "radarColor": "#C8B89A",
  "growingAnimation": true,
  "contribColors": ["#161614", "#3A3935", "#6B6960", "#C8B89A", "#E8E6DF"]
}
```

Output: `profile-3d-contrib/profile-customize.svg` (regenerated weekly)  
Note: env var is `SETTING_JSON` (no trailing S), points to a `.json` file path in-repo.

### GitHub Stats Card

Static image URL — `github-readme-stats` vercel endpoint. No action needed; renders live.

Params:
```
bg_color=0E0E0D
title_color=C8B89A
text_color=E8E6DF
icon_color=C8B89A
border_color=161614
ring_color=C8B89A
hide_border=false
show_icons=true
count_private=true
include_all_commits=true
```

### WakaTime Card

Static image URL — `github-readme-stats` WakaTime endpoint. No action needed.

Params:
```
bg_color=0E0E0D
title_color=C8B89A
text_color=E8E6DF
border_color=161614
hide_border=false
layout=compact
langs_count=6
```

### Activity Section Layout

```html
<!-- 3D contrib: full width, centered -->
<p align="center">
  <img src="./profile-3d-contrib/profile-night-rainbow.svg" alt="3d contribution graph" />
</p>

<!-- stats + wakatime: side by side -->
<table align="center">
  <tr>
    <td>
      <img src="https://github-readme-stats.vercel.app/api?username=RndmCodeGuy20&..." />
    </td>
    <td>
      <img src="https://github-readme-stats.vercel.app/api/wakatime?username=...&..." />
    </td>
  </tr>
</table>
```

---

## Actions Changes

### `profile-3d.yml` — update
Add `SETTINGS_JSON` env var with the color map above.

### `wakatime.yml` — remove
`athul/waka-readme` writes plaintext between comment markers — incompatible with the card approach. WakaTime is now a static image URL in the README. Action can be deleted.

### `update-readme.yml` — remove
Recent activity section is removed from the README. Action is unused.

---

## What Does Not Change

- Hero image (`assets/github header.png`) — untouched
- All prose content — exact wording kept
- Section names (`now`, `work`, `notes`, `contact`)
- Voice — lowercase, direct, no emoji, no badges
