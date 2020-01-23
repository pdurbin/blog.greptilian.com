---
title: Harvard DataFest 2020 Day 2
slug: harvard-datafest-day2
date: 2020-01-22T09:17:10-05:00
draft: false
publishDate: 2020-01-01
featured_image: /images/harvard-shield.svg
---

[Day 1][] of [#HarvardDataFest][] was fantastic and the [schedule][] for day 2 is looking good.

[Day 1]: /2020/01/21/harvard-datafest-day1/
[schedule]: https://harvarddatafest2020.sched.com
[#HarvardDataFest]: https://twitter.com/hashtag/HarvardDataFest

## Fernando Pérez

Page of Galileo's notebook, a precursor to Jupyter notebooks.

[Jupyter Meets the Earth: An Open, Collaborative Approach for Earth Data Science][] by Fernando Pérez

[Jupyter Meets the Earth: An Open, Collaborative Approach for Earth Data Science]: https://harvarddatafest2020.sched.com/event/YNkZ/keynote-jupyter-meets-the-earth-an-open-collaborative-approach-for-earth-data-science

Yes, the logo is what happens when you hand the original drawings from Galileo to a designer.

Fouder of [Berkeley Institute for Data Science][].

[Berkeley Institute for Data Science]: https://bids.berkeley.edu

The world is literally on fire.

In geoscience, physical models and noisy real world data. Every discipline is flooded with data.

"The gears of the engine are starting to grind" because so many different skills are needed, from science to scaling computation.

People don't come for your software. They want content and services. They have a story they want to tell in their domain.

The code is the obvious thing. Below it is "What ideas does the software embody?"

Formalizing how to run the project. If we hadn't built this human infrastructure, we couldn't have reached the level we have today.


```
   /Stories\
  /  Tools  \
 /   Ideas   \
/    People   \
```

Nod to the FAIR principles

250 line script was how IPython started, then a 6 week marathon.

Dimensions of openness:

- code
- data
- publications and artifacts
- etc

The scientific publication is merely advertising the scholarship. The actual scholarship is the complete software development environment.

Binder. Supply it a collection of notebooks and your dependencies.

http://bit.ly/black-holes-woop

Data is now a first class citizen in JupyterLab.

flybrainlab is an example of extensibility

Engaging with industry, Microsoft, Google, Code Ocean, etc. A complicated, delicate conversation.

New classes, http://prob140.org and http://www.data102.org

The first picture of a black hole had 22,953 community contributors.

Pangeo, DASK for exploring massive amounts of data with a familiar interface.

Traditional software funding.

Open, collaborative geoscience.

Question 1: What needs to happen for academia to recognize the values of open source software?

Answer: My traditional metrics are a mess. People should have multiple metrics to optimize on.

Question 2: How did this catch fire? How did you build the community?

Answer: Right place at the right time. Sublinear growth for a decade. The notebook people know today is the 5th iteration. nbviewer had a huge impact because people starting tweeting HTML versions of their notebooks.

## Hallway track

After the keynote I hung out with Rok from Renku and had a nice chat about potential next steps for integrating Dataverse and Renku. I caught the tail end of the Dataverse talk.

After lunch the Dataverse team met with Fernando and had a wide ranging conversation. It seems like we might try using the Jupyter forum to discuss reproducibility. I mentioned that Craig Willis had already kicked off a thread called [Generated Dockerfile v repo2docker as archival format][] that's on topic.

[Generated Dockerfile v repo2docker as archival format]: https://discourse.jupyter.org/t/generated-dockerfile-v-repo2docker-as-archival-format/301 

## Glupyter

I was just about to go home when I notice a [tweet][] from Rok about glue-jupyter, the fabled "Glupyter" I'd heard so much about in the last two days. I clicked the [Binder button][] in the README and it just worked. All of a sudden I had a scatter plot spread throughout a 3D cube that I could spin around in my brower. It was so much fun I couldn't resist [tweeting][] about it.

[tweet]: https://twitter.com/rokstars/status/1220063974483320832
[Binder button]: https://mybinder.org/v2/gh/glue-viz/glue-jupyter/master?filepath=notebooks
[tweeting]: https://twitter.com/philipdurbin/status/1220106150890233856
