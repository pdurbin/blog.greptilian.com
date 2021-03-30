---
title: Error handling in GitHub Actions
date: 2021-03-29T13:45:26-04:00
draft: false
publishDate: 2020-01-01
featured_image: /images/github-actions.svg
---

Today I was messing around with GitHub Actions for [OpenDP][].

I found an [answer][] on Stack Overflow that got me unblocked. I ended up splitting up my single step into multiple steps so I could indicate that I'm ok with one of the steps failing with [continue-on-error][].

I'm reminded that I should check out the GitHub Actions [advent calendar][] Ed Thomson made. I got a chance to meet him last year at [FOSDEM][]. Lots to learn.

[OpenDP]: /2021/03/01/splitting-time-between-dataverse-and-opendp/
[answer]: https://stackoverflow.com/questions/57850553/github-actions-check-steps-status/58003436#58003436
[continue-on-error]: https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idstepscontinue-on-error
[advent calendar]:https://www.edwardthomson.com/blog/github_actions_advent_calendar.html
[FOSDEM]: /2020/02/07/advancing-science-with-dataverse/
