---
title: "First Inkscape Vectors meeting of 2020"
date: 2020-01-05T11:38:58-05:00
featured_image: /images/inkscape-vectors.svg
---
Yesterday I was putting together a dresser from IKEA and had my laptop near me to glace at various chat rooms from time to time to see what's cooking.

As luck would have it, I checked Inkscape's [#team_vectors][] channel and noticed an [announcement][] that a meeting was coming up in a couple hours. From the [teams][] page,

> "The Vectors are the marketing, outreach, and promotion team for Inkscape. Designers, artists, marketers, writers, and anyone enthusiastic about bringing Inkscape to more people in more places is welcome to join."

[#team_vectors]: https://chat.inkscape.org/channel/team_vectors
[announcement]: https://chat.inkscape.org/channel/team_vectors?msg=eeAcZgHKfXL9w3Rq7
[teams]: https://inkscape.org/user/teams/

As a logo, Vectors have a nice hat:

![hat](/images/inkscape-vectors.svg)

As I've mentioned a [couple][] [times][], I'm heading to FOSDEM in less than a month so I thought I'd see if any Inkscape people will be there. I was encouraged to ask (in the same email) the [devel][] and [users][] lists if anyone would like to meet up.

[couple]: /2020/01/02/dataverse-talk-accepted-at-fosdem/
[times]: /2020/01/04/open-source-diversity-at-fosdem/

[devel]: https://lists.inkscape.org/postorius/lists/inkscape-devel.lists.inkscape.org/
[users]: https://lists.inkscape.org/postorius/lists/inkscape-user.lists.inkscape.org/

I'm not sure if FOSDEM was supposed to be on the agenda or not but I was glad to have a couple minutes to ask about it. Here's the rest of the agenda:

### Agenda (Revised)

- ~~CNC Plugins~~
- ~~About Screen Contest~~
- ~~FOSDEM~~
- ~~Social Media~~
- ~~1.0 Action Items~~
- ~~SCALE~~
- Tutorials Funding (February Meeting)
- Inkscope (February Meeting)
- 2020 Big Picture Goals (February Meeting)
- Revitalize Bug Hunt

There were also pleny of interesting side conversations, such as one about an interesting [Inkscape history][] chart.

[Inkscape history]: https://gitlab.com/inkscape/vectors/content/issues/73#note_247316899

I like how Vectors reminds everyone of the action items at the end:

### Action Items (Revised):

- @Tim engage FB group about testing plugins and shareable artwork. Other testers welcome!
- @ryangorley create social stats issue and post link. @Tim and Ryan (and others) post stats.
- Social posts in January to encourage bug reporting for 1.0, bug migration, and invite triage/development contributors to get involved. @michele @Tim @ryangorley
- Revisit ^^^ topic in next meeting too
- @Lazur gather ideas about openclipart and plan a separate discussion (date TBD)

It was cool to see the [social media stats][] issue get created and updated right after the meeting.

[social media stats]: https://gitlab.com/inkscape/vectors/general/issues/130

One thing I learned is that the label [Blocker][] is being used for issues that prevent Inkscape 1.0 from shipping. Right now there are three blockers:

- I was easily able to reproduce issue [266][].
- I tried to reproduce issue [634][] but couldn't.
- I haven't tried reproducing [411][].

[Blocker]: https://gitlab.com/inkscape/inkscape/issues?label_name%5B%5D=Blocker
[634]: https://gitlab.com/inkscape/inkscape/issues/634
[266]: https://gitlab.com/inkscape/inkscape/issues/266
[411]: https://gitlab.com/inkscape/inkscape/issues/411

In the meeting itself, these and other bugs on Mac were [described][] this way:

> - there is svg font editor window, click in some empty space and crash
> - some dialogs cannot be closed or stay indefinitely on screen while being like 60% transparent
> - our downgrade to Gtk 3.22 to get dockable dialogs working againg (regression in 3.24) introduced another regression that crashes Inkscape when you try to use typeahead in file chooser dialog 

[described]: https://chat.inkscape.org/channel/team_devel?msg=Ju2EpFyNcke7ZvD9P

Vectors already roughed out an agenda for their next meeting:

#### Febrary Agenda (In Progress)

- Tutorials Funding @ryangorley @c.rogers
- Inkscope @Tim
- 2020 Big Picture Goals @all
- Revitalize Bug Hunt
- Inkscape Survey @victorwestmann

According to their [team page][],

> "We hold a monthly meeting each first Saturday in a month at 4:00 PM UTC (11:00 AM ET, 8:00 AM PT, 17:00 CET), it is the day after the Inkscape Board Meeting is held."

[team page]: https://inkscape.org/*inkscape-vectors/

According to the [board page][],

> "Board meetings are typically the first Friday of each month."

[board page]: https://wiki.inkscape.org/wiki/index.php/Board_Meetings

So I guess that means, Saturday, February 8th at 11am Boston time.
