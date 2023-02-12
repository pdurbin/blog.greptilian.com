---
title: "New laptop! An M2 MacBook Air"
slug: new-laptop
date: 2023-02-12T13:03:46Z
draft: false
publishDate: 2020-01-01
featured_image: /images/m2.svg
---

I've been in the market for a new laptop for a long, long time. I bought my last laptop in 2011 and have run Linux on it, but I've been very disappointed with the hardware (a ThinkPad X220T). I had [dreams][] of using the Wacom tablet built into the screen to make artwork, but it just didn't work out, and it wasn't cheap either. It was time for a change. Maybe every other laptop can be for Linux. Sorry, Linux, it's not you, it was [the][] [hardware][].

[dreams]: https://lists.inkscape.org/hyperkitty/list/inkscape-user@lists.inkscape.org/thread/TW6KMR62UZL4DKQUELA2LNGGRAIQTBXB/
[the]: https://unix.stackexchange.com/questions/37962/can-i-prevent-disable-touchpad-while-typing-from-affecting-mouse-movements
[hardware]: http://wiki.greptilian.com/gnome/3/issues/disable-touchpad-while-typing-paralyzes-mouse-movements/

Ideally I want a setup at home similar to what I have at work: a MacBook Pro with a large monitor and an external keyboard. Ergonomics are important to me and at least for the Java I hack on at work, being able to see more code at once helps a lot. However, at home I'm quite space constrained so the only thing from above that I got was an external keyboard. Instead of an external monitor I bought a [Curve Flex][] laptop stand to get the screen much closer to eye level.

[Curve Flex]: https://www.twelvesouth.com/products/curve-flex-for-macbook

As for the laptop itself I went for an [M2 Macbook Air][]. This is my first experience with an ARM processor in a computer and it's... interesting. The first Apple silicon chip was the M1, of course. A colleague at work has one and he hasn't had much trouble that I know of.

[M2 Macbook Air]: https://en.wikipedia.org/wiki/MacBook_Air_(Apple_silicon)

Most apps are installing just fine on the M2. Firefox, Element, VS Code, and Inkscape don't seem to have any trouble. (Inkscape does have a warning about Ventura, macOS 13.0, not being supported, but I haven't hit any problems yet.) I did open a [bug][] for Quiet not working on the M2 without [Rosetta][].

[bug]: https://github.com/TryQuiet/quiet/issues/1214
[Rosetta]: https://en.wikipedia.org/wiki/Rosetta_(software)

Containers are keeping me busy. On my Mac at work I've been using Docker for years but I thought I'd give Podman a try. Between Podman, the M2, and my grasp of only basic Docker commands, I've been struggling a bit. The fact that I'm trying zsh instead of bash is also slowing me down here and there. I did alias docker to podman, as instructed.

`docker run hello` works just fine and shows me some cute seals:

```
!... Hello Podman World ...!

         .--"--.           
       / -     - \         
      / (O)   (O) \        
   ~~~| -=(,Y,)=- |         
    .---. /`  \   |~~      
 ~/  o  o \~~~~.----. ~~   
  | =(X)= |~  / (O (O) \   
   ~~~~~~~  ~| =(Y_)=-  |   
  ~~~~    ~~~|   U      |~~ 
```

Great! Then I moved on to [docker-aio][] (all in one) from Dataverse and had problems that I'll probably worry about on work time.

[docker-aio]: https://guides.dataverse.org/en/5.12.1/developers/testing.html#running-the-full-api-test-suite-using-docker

A much smaller Docker is example is from my [notice][] project where I use a Tidyverse image from Rocket rather than installing all that R stuff on my laptop. Here's the warning/error was getting:

`% docker create --name extract pdurbin/notice`
`WARNING: image platform ({amd64 linux  [] }) does not match the expected platform ({arm64 linux  [] })`

After much poking around I made a [commit][] that seems to help. It amounts to adding ``--platform linux/x86_64`` here and there, which I picked up from [a Rocker issue][]. I did smile at [a comment][] in another issue:

> Isn't Docker supposed to prevent just this kind of problem?

Yes, you'd think so. 

[notice]: https://github.com/pdurbin/notice
[commit]: https://github.com/pdurbin/notice/commit/bfd41f4
[a Rocker issue]: https://github.com/rocker-org/rocker-versioned2/issues/144
[a comment]: https://github.com/rocker-org/rocker/issues/450#issuecomment-992996253

Now that I'm writing up this blog post and hacking some more I'm realizing that I may not need that `--platform` flag after all. The last step of copying out the image was failing this this:

`% docker cp extract:/results/figure.png /tmp`   
`Error: 2 errors occurred:`  
`* copying to host: copier: put: error resolving "/tmp": open /tmp: too many levels of symbolic links`
`* copying from container: io: read/write on closed pipe`

The fix was pretty simple. In the `docker cp` I changed `/tmp` to `/tmp/out` (it could be any subdirectory of course). I'm guessing this is necessary because I switched to Podman. Like I said, lots of change. New chip architecture, new container software, new macOS version. I'm not surprised I'm hitting some bumps.
