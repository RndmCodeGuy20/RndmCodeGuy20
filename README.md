<!-- hero image -->
<p align="center">
  <img src="./assets/github header.png" alt="shantanu mane" width="100%"/>
</p>

---

### builder of things that mostly work

i write code that is supposed to be boring in production and interesting in the commit history.
most of my systems ship a kill switch. i have never needed one. i keep it anyway.

---

## now

<!--START_SECTION:now-->
- dotmind → https://github.com/RndmCodeGuy20/dotmind, 5 commits this week
- RndmCodeGuy20 → https://github.com/RndmCodeGuy20/RndmCodeGuy20, 1 commit this week
<!--END_SECTION:now-->

*updates weekly, ranked by commits in the last 7 days*

---

## work

**[sentinel](https://github.com/RndmCodeGuy20/sentinel)**  
hardened docker sandbox for untrusted code. 11 layers of defense between a stranger's solution.py and the host, and the runner itself is not allowed to know if the answer was right.  
![Go](https://img.shields.io/badge/Go-0E0E0D?style=flat-square&logo=go&logoColor=C8B89A)
![Docker](https://img.shields.io/badge/Docker-0E0E0D?style=flat-square&logo=docker&logoColor=C8B89A)
![gVisor](https://img.shields.io/badge/gVisor-0E0E0D?style=flat-square&logo=google&logoColor=C8B89A)
![e2e](https://img.shields.io/badge/e2e-passing-C8B89A?style=flat-square&labelColor=161614)
![release](https://img.shields.io/badge/release-passing-C8B89A?style=flat-square&labelColor=161614)

**[mpiper](https://github.com/RndmCodeGuy20/mpiper)**  
media processing pipeline, go api and python workers arguing over redis streams. bounded worker pool gets ~2.4x throughput, dead letters get a stream of their own instead of getting dropped on the floor.  
![Go](https://img.shields.io/badge/Go-0E0E0D?style=flat-square&logo=go&logoColor=C8B89A)
![Python](https://img.shields.io/badge/Python-0E0E0D?style=flat-square&logo=python&logoColor=C8B89A)
![Redis](https://img.shields.io/badge/Redis-0E0E0D?style=flat-square&logo=redis&logoColor=C8B89A)
[![CI](https://img.shields.io/github/actions/workflow/status/RndmCodeGuy20/mpiper/ci.yml?style=flat-square&label=ci&color=0E0E0D&labelColor=161614)](https://github.com/RndmCodeGuy20/mpiper/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/actions/workflow/status/RndmCodeGuy20/mpiper/release-lts.yml?style=flat-square&label=release&color=0E0E0D&labelColor=161614)](https://github.com/RndmCodeGuy20/mpiper/actions/workflows/release-lts.yml)

**[golem](https://github.com/RndmCodeGuy20/golem)**  
the orchestrator sentinel answers to. spins up ephemeral containers, claims jobs off redis streams, decides verdicts so the sandbox doesn't have to.  
![Go](https://img.shields.io/badge/Go-0E0E0D?style=flat-square&logo=go&logoColor=C8B89A)
![Redis](https://img.shields.io/badge/Redis-0E0E0D?style=flat-square&logo=redis&logoColor=C8B89A)
![PostgreSQL](https://img.shields.io/badge/Postgres-0E0E0D?style=flat-square&logo=postgresql&logoColor=C8B89A)
![ci](https://img.shields.io/badge/ci-passing-C8B89A?style=flat-square&labelColor=161614)

**[notebook](https://github.com/RndmCodeGuy20/notebook)**  
this portfolio's actual home. tracks every visitor scroll over sse and redis pub/sub, mostly so i can watch nobody scroll past the hero section in real time.  
![Next.js](https://img.shields.io/badge/Next.js-0E0E0D?style=flat-square&logo=next.js&logoColor=C8B89A)
![Tailwind](https://img.shields.io/badge/Tailwind-0E0E0D?style=flat-square&logo=tailwindcss&logoColor=C8B89A)
![Railway](https://img.shields.io/badge/Railway-0E0E0D?style=flat-square&logo=railway&logoColor=C8B89A)
![build](https://img.shields.io/badge/build-passing-C8B89A?style=flat-square&labelColor=161614)

**[mini_dns](https://github.com/RndmCodeGuy20/mini_dns)** (aegis)  
an esp32 that resolves hostnames, sinkholes ad domains, and serves a crud api and prometheus metrics, all on a chip smaller than the badges below.  
![C++](https://img.shields.io/badge/C%2B%2B-0E0E0D?style=flat-square&logo=cplusplus&logoColor=C8B89A)
![ESP-IDF](https://img.shields.io/badge/ESP--IDF-0E0E0D?style=flat-square&logo=espressif&logoColor=C8B89A)
![Prometheus](https://img.shields.io/badge/Prometheus-0E0E0D?style=flat-square&logo=prometheus&logoColor=C8B89A)
[![CI](https://img.shields.io/github/actions/workflow/status/RndmCodeGuy20/mini_dns/ci.yml?style=flat-square&label=ci&color=0E0E0D&labelColor=161614)](https://github.com/RndmCodeGuy20/mini_dns/actions/workflows/ci.yml)

---

## activity

<p align="center">
  <img src="./profile-3d-contrib/profile-customize.svg" alt="3d contribution graph" width="100%"/>
</p>

---

## notes

i write down what actually happened, not what the postmortem template wants me to say happened.

→ https://notebook.rndmcode.in

---

## contact

- site → https://notebook.rndmcode.in
- mail → maneshantanu.20@gmail.com
- github → you're already here, might as well star something
- response time → faster for bug reports than for "quick questions"
