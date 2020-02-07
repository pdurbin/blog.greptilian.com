---
title: Guix-Jupyter
date: 2020-02-06T18:21:00-05:00
featured_image: /images/guixhpc-logo.svg
---

The one talk I attended in person in the HPC devroom on Sunday at FOSDEM was [Interactive HPC][] but now I'm working my way through the recordings.

[Interactive HPC]: /2020/02/05/interactive-hpc/

[Towards reproducible Jupyter notebooks][] caught my eye and it was really interesting. The software is called Guix-Jupyter and I already mentioned it in a [previous][] blog post where I pointed out a [tweet][] that links to a [post][] on the Jupyter forum.

[Towards reproducible Jupyter notebooks]: https://fosdem.org/2020/schedule/event/reprod_jupyter_guix/
[previous]: /2020/01/14/fernando-perez/
[tweet]: https://twitter.com/fperez_org/status/1214268384344334337
[post]: https://discourse.jupyter.org/t/guix-jupyter-towards-self-contained-reproducible-notebooks/2379

To motivate the discussion, we first see a tweet by [Daniel Katz][]:

> When I see a jupyter notebook that starts with  
> pip install  
> I get a little scared

[Daniel Katz]: https://twitter.com/danielskatz/status/1150761250403565570

Exactly. The idea is to capture more detail in a custom Jupyter kernel. Lots more details seem be be available in a [blog post][] I found in their [announcement][] of FOSDEM talk.

[blog post]: https://hpc.guix.info/blog/2019/10/towards-reproducible-jupyter-notebooks/
[announcement]: https://hpc.guix.info/blog/2020/01/guix-hpc-at-fosdem/
