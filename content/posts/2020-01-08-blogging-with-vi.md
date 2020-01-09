---
title: Blogging with vi
slug: blogging-with-vi
date: 2020-01-08T18:53:22-05:00
featured_image: /images/vim-logo.svg
---

Over a week into blogging every day on this new blog I've started to get a little braver about mentioning it to people. Twice today I felt compelled to explain that I'm blogging with vi. Here's my process:

- ssh into my server
- run my "create post" script to stub out a file
- think about what to write
- rename the stub to match my topic, a bit
- find an SVG file for the topic
- write, `make`, write, repeat
- make sure post is a "5 minute read" or shorter
- make sure it looks fine on mobile
- commit, push
- pull on some other computer so I have a backup.

Here's my "create post" script right now:

    hugo --config .config.toml new posts/`date -I`-`uuidgen | cut -c-6`.md

If you really want to see the sausage being made, the git history is on my [git server][].

[git server]: http://git.greptilian.com
