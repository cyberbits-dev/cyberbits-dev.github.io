---
layout: post
title:  "Improve mirror system"
categories: mirror reliability
---

We completed a major internal overhaul of our [mirroring scripts](https://gitlab.com/cyberbits/msync) to use [systemd timers](https://wiki.archlinux.org/title/Systemd/Timers) for better reliability.
This allows us to be notified instantly whenever a mirror is failing to sync so we can provide you with more up-to-date mirrors.
