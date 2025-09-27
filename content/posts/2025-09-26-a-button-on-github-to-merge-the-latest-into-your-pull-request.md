---
title: A button on GitHub to merge the latest into your pull request
slug: a-button-on-github-to-merge-the-latest-into-your-pull-request
date: 2025-09-26T23:45:54Z
draft: false
publishDate: 2020-01-01
featured_image: /images/github-logo.svg
---

Today I wondered, not for the first time, why there isn't a button on GitHub pull requests that says "merge the latest from main" or whatever your default branch is called.

It turns out, there can be! But it's a hidden feature of GitHub! The button is called "update branch" but it's off by default.

I can't find the original announcement of the "update branch" button, but here's a follow up post: https://github.blog/changelog/2022-02-03-more-ways-to-keep-your-pull-request-branch-up-to-date/

Here are the docs: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/keeping-your-pull-request-in-sync-with-the-base-branch

Here's how to turn on the "update branch" button, per repo, by checking the box called "always suggest updating pull request branches": https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-suggestions-to-update-pull-request-branches

Is there any downside to enabling the "update branch" button? Well, there are [complaints](https://github.com/orgs/community/discussions/13749#discussioncomment-8270958) that doing so could result in more CI runs.

On a related note, there's a button called "sync fork" that does something similar for forks specifically. It was announced at https://github.blog/changelog/2021-05-06-sync-an-out-of-date-branch-of-a-fork-from-the-web/ and the docs are here: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork
