---
title: Research data repository software comparison
date: 2020-02-25T22:28:26-05:00
featured_image: /images/dataverse-logo.svg
---

Biking home from work today I was listening to the [video][] of the second day of the NIH Generalist Repositories Workshop and heard mention of a spreadsheet being used to compare data repositories. Sure enough, the [notes][] for that day mention a spreadsheet called [Repository and Index Software (Work in Progress)][] as well as a [repo][] on GitHub that was recently updated to include this spreadsheet.

The repo says,

> "We created this list to:
> 
> 1. Provide a "lay of the land" summary of existing software
> 2. Identify important features (especially those that fall in the "next generation repository" category) for [InvenioRDM](https://github.com/data2health/InvenioRDM)
> 3. Identify other tools that may have some level of interoperability with our project"

So I guess the spreadsheet comes from InvenioRDM, which seems to be a flavor of Invenio.

Dataverse is in the spreadsheet but, sadly, the information seems to be stale. For example, while a "no" for "Internationalization Support" was accurate a while back, Dataverse has since been translated into 11 languages:

- English (US)
- French (Canada)
- French (France)
- German (Austria)
- Slovenian
- Swedish
- Ukrainian
- Spanish
- Italian
- Hungarian
- Portuguese

Hmm, maybe 10 is more accurate since the two French translations are probably similar. Anyway, I left a comment about this in the spreadsheet. 😄

I also left a comment about how Dataverse now supports OpenID Connect 1.0. This is quite a recent development, only available in the latest release, 4.19.

It's late and I don't have the energy to leave more comments but I'm hoping that I get a reponse on the two I left. And maybe I'll listen to that part of the video again to make sure I understand what was said.

I sympathize with how hard it is to keep comparisons like this up to date. I saw a [tweet][] recently saying, "I've seen this older compilation before from @dataverseorg (2017). Any updates or other sources?" This is a reference to the a spreadsheet and associated blog post called [A Comparative Review of Various Data Repositories][], which is indeed from 2017.

[video]: https://videocast.nih.gov/watch=35859
[notes]: https://docs.google.com/document/d/1d1PAQGLXQqQCIIzcfp3RNb2TBBxqcC5sgGGAdSC2ObI/edit?usp=sharing
[Repository and Index Software (Work in Progress)]: https://docs.google.com/spreadsheets/d/1SJ7EFyvqRd1fe6ZqqTG2EzvCVCvl-T8Woiv8FgHTawQ/edit?usp=sharing
[repo]: https://github.com/data2health/repository-and-index-software
[tweet]: https://twitter.com/zhao_shirley/status/1227271933798035456
[A Comparative Review of Various Data Repositories]: https://dataverse.org/blog/comparative-review-various-data-repositories
