---
title: Searchable Linkable Open Public Indexed (SLOPI) Communication or Why open source projects should avoid Slack
slug: slopi-communication
date: 2020-01-25T10:42:51-05:00
draft: false
publishDate: 2020-01-01
featured_image: /images/slopi-logo.svg
---

Free and open source software projects have a long history of transparent communication. [GNU][] and [Linux][] were announced in publicly archived USENET posts in 1983 and 1991, respectively, that we can still reflect on today. The [Debian Social Contract][] says, "We will keep our entire bug report database open for public view at all times." [Apache][] "requires all communications related to code and decision-making to be publicly accessible."

[GNU]: https://groups.google.com/d/msg/net.unix-wizards/8twfRPM79u0/1xlglzrWrU0J
[Linux]: https://groups.google.com/d/msg/comp.os.minix/dlNtH7RRrGA/SwRavCzVE7gJ
[Debian Social Contract]: https://www.debian.org/social_contract
[Apache]: https://apache.org/theapacheway/

Today many open source projects are turning away from transparency, adopting tools such as Slack for the bulk of their communication. **Slack is a great tool for telling co-workers on your floor that you brought in donuts.** Slack may be a fine place to discuss security vulnerabilities or code of conduct violations. Open source projects can make good use of Slack. However, if nearly all communication takes place on Slack, transparency suffers.

Searchable Linkable Open Public Indexed (SLOPI) communication (pronounced "sloppy") is a new term for reminding open source practitioners about the importance of transparency. When you find yourself making design decisions in Slack, you can say, "**Wait. Let's stop having a private conversation about this. Let's bring it to the community. Let's be SLOPI.**"

![](/images/slopi-logo.svg)

Messages written in the SLOPI communication style are:

- **Searchable**: Messages can be found using Google or other search engines.
- **Linkable**: Messages have a permalink on the web. Ideally the URL [doesn't change][] or redirects.
- **Open**: Messages are in the open, like [open access][] articles with the full text available.
- **Public**: Messages are public. No login is required.
- **Indexed**: Messages are indexed by search engines. Or **Indexable** (if you prefer) by a [discovery layer][] you operate because [data liberation][] is possible.

[doesn't change]: https://www.w3.org/Provider/Style/URI
[open access]: https://en.wikipedia.org/wiki/Open_access
[discovery layer]: https://en.wikipedia.org/wiki/Discovery_layer
[data liberation]: https://en.wikipedia.org/wiki/Google_Data_Liberation_Front

Examples of tools that support the SLOPI communication style include:

- mailing lists with public archives
- public forums
- public issue trackers
- [Gitter][]
- IRC channels with public logs ([#social][] from W3C, for example)
- Matrix rooms with public logs (many [matrix-static][] examples)
- XMPP rooms with public logs ([XFS][], for example)
- Rocket.Chat rooms with public logs (Inkscape's [#team_devel][], for example)
- public roadmaps
- public kanban boards

[Gitter]: https://gitter.im
[#social]: http://socialwg.indiewebcamp.com/irc/social/today
[matrix-static]: https://view.matrix.org
[XFS]: http://logs.xmpp.org/xsf/
[#team_devel]: https://chat.inkscape.org/channel/team_devel

The [coining][] of the term "SLOPI" began on May 5th, 2019 and "Searchable Linkable Open Public Indexed (SLOPI) Communication" was [proposed][] as a Good Labs project later that day. SLOPI was [well received][] when presented as one of many [crazy ideas][] on June 21, 2019. A couple days later it was announced on [Twitter][].

[coining]: https://gitter.im/good-labs/community/archives/2019/05/05?at=5ccf205497dcb371d86b12d1
[proposed]: https://github.com/good-labs/good-labs.github.io/pull/24
[well received]: https://twitter.com/atrisovic/status/1143598937070329856
[crazy ideas]: https://scholar.harvard.edu/pdurbin/blog/2019/jupyter-notebooks-and-crazy-ideas-for-dataverse
[Twitter]: https://twitter.com/philipdurbin/status/1142962220655157249

SLOPI is discussed in the [SLOPI issue tracker][] and the Good Labs [community][] room. Feedback is very welcome!

[community]: https://gitter.im/good-labs/community
[SLOPI issue tracker]: https://github.com/good-labs/slopi-communication/issues

## Acknowledgements

Thank you to [Yamil Suarez][] for feedback on this post.

[Yamil Suarez]: http://www.yamil.com
