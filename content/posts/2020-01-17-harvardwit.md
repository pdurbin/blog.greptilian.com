---
title: HarvardWIT+ Mentoring
slug: harvardwit-mentoring
date: 2020-01-17T22:41:04-05:00
featured_image: /images/harvardwit-logo.png
---

HarvardWIT+ asked for mentors to participate in their [mentoring program][] and I signed up. My mentee is very nice and we met today.

[mentoring program]: https://wit.abcd.harvard.edu/mentoring

She has a variety of ideas of where she's like to take her career and has expressed an interest in learning Python or R. I asked her to this of something from work that she could use as a first project.

She explained that when looking at a [record][] in ALMA with a number like 99153754014903941 what she really wants is the older HOLLIS number (better for searching) that's embedded within in. She has figured out that you can remove the first two digits (99) and then use only the next 9 digits to get the HOLLIS number, like this:

[record]: http://id.lib.harvard.edu/alma/99153754014903941/catalog

    99153754014903941
    153754014903941
    153754014

I showed her how to implement this with a couple `cut` commands in a one-liner but it's doubtful she'll want to go to the command line for this. It would probably be better to stay in the browser and implement something (a bookmarklet? Is that still a thing?) in Javascript. We can always use Python or R for something more data science-y.
