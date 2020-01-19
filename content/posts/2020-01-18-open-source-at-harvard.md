---
title: Open Source at Harvard
date: 2020-01-18T11:24:56-05:00
featured_image: /images/open-source-at-harvard.svg
---

The other day I [mentioned][] in passing how [Open Source at Harvard][] has a new website and when I wrote about [GitHub Actions][] that was me taking a look at how the website is deployed.

[mentioned]: /2020/01/10/cs50-and-kubernetes/
[Open Source at Harvard]: https://github.com/IQSS/open-source-at-harvard
[GitHub Actions]: /2020/01/13/github-actions/

But is **Open Source at Harvard** really a thing? If so, what it is? Let's dig in.

![Open Source at Harvard logo](/images/open-source-at-harvard.svg)

*(Today I threw together the logo above in 60 seconds. Patches welcome!)*

I've been fascinated with open source since I first discovered in the late 90s.

When I first started working at Harvard in 2006 it wasn't particularly known for creating open source software. It still isn't. But I could see pockets of it, even near me. Source releases of [WhatIf][] and [MatchIt][] on CRAN go back to 2005, for example.

[WhatIf]: https://cran.r-project.org/src/contrib/Archive/WhatIf/
[MatchIt]: https://cran.r-project.org/src/contrib/Archive/MatchIt/

Every once in a while I would suggest that code I was hacking on for the [RCE][] could probably be open sourced or maybe even the whole system but it was never designed to be run anywhere but our cluster. When I left IQSS to work for a year or so at FASRC I would throw onto GitHub the occasional [config file][] (which I remember being [surprised][] was #2 in terms of stars).

[RCE]: https://www.iq.harvard.edu/research-computing
[config file]: https://github.com/fasrc/sas2ircu
[surprised]: https://twitter.com/philipdurbin/status/662429406330273792

In late 2012 I returned to IQSS to work on Dataverse, which was the biggest open source project coming out of Harvard. It still is the biggest, I think.

![](/images/dataverse-logo.svg)

Time passed. I tried to help turn Dataverse into a proper open source project. My first accomplishment was moving the code from SourceForge to GitHub. I also beefed up our community involvement, establishing an IRC channel and answering questions on the mailing list.

By 2015 someone must have noticed how enthusiastic I am about open source because I was invited to attend a meeting about open sourcing a project. It was probably one of the best meetings I've ever attended but I declined future meetings. I did successfully convince the author of a thoughtful [wiki page][] called "Harvard Library Open Source Project Considerations" to open the page to the public.

[wiki page]: https://wiki.harvard.edu/confluence/display/LibraryStaffDoc/Harvard+Library+Open+Source+Project+Considerations

I kept thinking to myself that there have got to be other open source projects coming out of Harvard. In 2017 I published [version 1][] of  a dataset of 48 open source projects from Harvard sorted by the number of stars on GitHub, including:

- [Dataverse](https://github.com/IQSS/dataverse) (192 stars)
- [OpenScholar](https://github.com/openscholar/openscholar) (184 stars)
- [excel4node](https://github.com/amekkawi/excel4node) (170 stars)
- [daisy](https://github.com/HBRGTech/daisy) (115 stars)
- [Perma.cc](https://github.com/harvard-lil/perma) (85 stars)

[version 1]: https://doi.org/10.7910/DVN/TJCLKP/GYUYRZ

Obviously, stars on GitHub don't indicate much but it's something.

Also in 2017 I was preparing for a talk about how to run an open source project. I gave a [practice talk][] at ABCD and the [actual talk][] at JavaOne. I encouraged people at Harvard to make to make [pull requests][] to add their project to my list.

[practice talk]: http://wiki.greptilian.com/talks/2017/abcd-how-to-run-an-open-source-project/
[actual talk]: http://wiki.greptilian.com/talks/2017/javaone-how-to-run-an-open-source-project/
[pull requests]: https://github.com/IQSS/open-source-at-harvard/pulls

Around the same time I created a [Google doc][] called "opensource.harvard.edu: What if Harvard showed the world how much we contribute to open source?" At the time [opensource.google][] was new and I really liked how Google showcased their open source projects.

[Google doc]: https://docs.google.com/document/d/1CSWV9VxHfJj_ahArNYTsCAG0D8OtSfZhrCwpNiIKWQw/edit?usp=sharing
[opensource.google]: https://opensource.google

Time passed and I continued to merge [pull requests][] adding more projects to my dataset, eventually releasing [version 3][] with 110 projects.

[version 3]: https://doi.org/10.7910/DVN/TJCLKP/3VSTKY
