---
title: Helper Bees
date: 2020-01-12T07:43:55-05:00
featured_image: /images/helper-bees-logo-800.png
---

This afternoon the Helper Bees team is having its biggest meeting since our kickoff.

![](/images/helper-bees-logo-800.png)

With Helper Bees we are **matching student volunteers to neighborhood donors**. At least that's the description I put for the [repo][] on GitHub, which has the following sequence diagram that a friend said is worth a thousand words:

![](/images/helper-bees-sequence-diagram.png)

[repo]: https://github.com/CoolidgeCornerSchool/helperbees

Here's a rough timeline of Helper Bees from my perspective:

- October 6, 2019: Initial idea, [helperbees.org][] registered
- October 21, 2019: Onboarding product owner
- October 25, 2019: Prototype at Halloween Bash
- November 5, 2019: Signing up kids to volunteer at the Flatbreads Pizza and Brighton Bowl party
- November 20, 2019: Launch
- November 27, 2019: Talking it up with the principal and others at the DFL Superbowl
- December 10, 2019: Helping parents use the live site at Craft Fair
- January 12, 2020 (today): Passing the baton for next year.

[helperbees.org]: http://helperbees.org

See, there are four of us on core Helper Bees team but I'm the only one who has a younger child in the school. The other three will understandably be moving on.

The way I see it is that we'll first make a decision about if there enough parents of 7th graders to put in all the non-technical administrative work next school year. If so, we'll rally enough geeks to keep the site running.

Here's my take on [roles for a Helper Bees team][]:

| Role                | Tasks                                                     | Suggested reading
| ---                 | ---                                                       | ---
| Product owner       | Vision, priorities, backlog grooming                      | [Agile Product Ownership in a Nutshell][]
| Admin               | User support                                              | [Helper Bees README][]
| Front end developer | Jekyll, Bootstrap, and jQuery                             | [Helper Bees Contributing Guide][]
| Back end developer  | Python, DynamoDB and AWS Lambda                           | [Helper Bees Contributing Guide][]

I think we can pull it off next year if we have one of each, so four people.

[roles for a Helper Bees team]: https://docs.google.com/spreadsheets/d/1KP6BNi92i74Y_OIN4-XLgg92twm0W-bhMnAokKR0mnI/edit?usp=sharing
[Agile Product Ownership in a Nutshell]: https://blog.crisp.se/2012/10/25/henrikkniberg/agile-product-ownership-in-a-nutshell
[Helper Bees README]: https://github.com/CoolidgeCornerSchool/helperbees/blob/master/README.md
[Helper Bees Contributing Guide]: https://github.com/CoolidgeCornerSchool/helperbees/blob/master/CONTRIBUTING.md

Four adults, I should say. Erika is already all in on Helper Bees. She recently created this Helper Bees coloring page:

![coloring page of bees and a hive](/images/helper-bees-coloring-page.svg)

Erika drew this fundraising thermometer that we're hoping to incorporate into the site some day:

![bee filling up](/images/helper-bees-thermometer.gif)

p.s. Here's how I used the ImageMagick convert tool to resize the small pixel art image without making it fuzzy:

    convert logo.png -scale 800% logo-scaled.png

p.p.s. While I'm enjoying [blogging with vi][] and writing in Markdown, I'm a little annoyed that to make the HTML table above look good on mobile, I'm replacing long words like "responsibilities" with "tasks" and removing long (important!) words like "communication." Maybe I should avoid tables in the future, but I thought I'd give it a try. 🙂

[blogging with vi]: /2020/01/08/blogging-with-vi/

