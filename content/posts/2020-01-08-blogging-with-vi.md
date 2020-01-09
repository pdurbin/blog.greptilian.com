---
title: Blogging with vi
slug: blogging-with-vi
date: 2020-01-08T18:53:22-05:00
featured_image: /images/vim-logo.svg
---

Over a week into blogging every day on this new blog I've started to get a little braver about mentioning it to people. Twice today I felt compelled to mention that I'm blogging with vi. Here's my process:

- ssh into my server
- run my "create post" script to stub out a file
- think about what to write
- rename the stub to a filename that somewhat matches my topic
- find an SVG file for the topic
- write, `make`, write, repeat, trying to keep the post a "5 minute read" or shorter
- commit, push
- pull on some other computer so I have a backup.

p.s. Here's my "create post" script right now:

    hugo --config .config.toml new posts/`date -I`-`uuidgen | cut -c-6`.md
