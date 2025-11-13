---
title: HTTPS at last
date: 2025-11-12T23:46:16Z
draft: false
publishDate: 2020-01-01
featured_image: /images/certbot.svg
---

A buddy was gently [nagging](https://osdc.zulipchat.com/#narrow/channel/406743-boston/topic/HTTPS.20everywhere.2C.20even.20Phil's.20websites/near/534268095) me about how I run a blog over vanilla HTTP rather than HTTPS. Little did he know I have nine of these sites. 😬

Yes, I'm well aware of [HTTPS Everywhere](https://www.eff.org/https-everywhere), how Chrome marks HTTP as [not secure](https://blog.google/products/chrome/milestone-chrome-security-marking-http-not-secure/), and how Google uses HTTPS as a [ranking signal](https://developers.google.com/search/blog/2014/08/https-as-ranking-signal). I know [Let's Encrypt](https://en.wikipedia.org/wiki/Let%27s_Encrypt) and [Certbot](https://certbot.eff.org) have been around a long time. Wow, 10 years already.

![](/images/lets-encrypt-logo.svg)

It wasn't too hard to find a [blog post](https://www.digitalocean.com/community/tutorials/how-to-secure-apache-with-let-s-encrypt-on-ubuntu) that described what I should do, on Ubuntu 22.04 even, with Apache. As with most of these tutorials, they assume you only have one site (`example.com` and `www.example.com`). What about me with FQDNs at movies.greptilian.com and music.thedurbins.com (among seven others), all hosted on the same ratty $4-per-month Digital Ocean droplet?

It turns out Certbot had me covered. It handles multiple domains just fine. See below for the full output.

![](/images/certbot.svg)

Now, Certbot did pick the first alphabetically-sorted FQDN it saw (api.greptilian.com) as the most important one, or at least the one that will be given the common name in the certificate. But who cares? Who looks at the certs anyway, right? With two different domains (greptilian.com and thedurbins.com), I'm not even sure what common name I want in the cert so maybe it's just as well that Certbot picked for me.

Basically, I ran one command and Certbot did all the work. Great job, Certbot team! 🎉

Certbot changed all my Apache configs and I squirreled them away [in git](https://github.com/pdurbin/greptilian-vagrant/commit/1ad7f829c74e4f4934dd46d5175c6210b1cd94ff) for safekeeping.

I'm not sure how to add an additional site but I guess that's a problem for future me. 😅 (From a quick look, [docs](https://eff-certbot.readthedocs.io/en/stable/using.html#re-creating-and-updating-existing-certificates) on `--expand` look promising.)

I'm also not sure how important it is to back up my private key. If this was all so easy to set up, can I just start from scratch again if I need to? 🤔 I found a little [chatter](https://community.letsencrypt.org/t/lost-private-key/53560) about what to do if you lose your private key.

Anyway, I feel a little silly for dragging my feet for so long. I love it when stuff just works. \o/

```
pdurbin@server4:~$ sudo apt install certbot python3-certbot-apache
pdurbin@server4:~$ sudo certbot --apache
Saving debug log to /var/log/letsencrypt/letsencrypt.log
Enter email address (used for urgent renewal and security notices)
 (Enter 'c' to cancel): philipdurbin@gmail.com

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Please read the Terms of Service at
https://letsencrypt.org/documents/LE-SA-v1.5-February-24-2025.pdf. You must
agree in order to register with the ACME server. Do you agree?
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(Y)es/(N)o: y

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Would you be willing, once your first certificate is successfully issued, to
share your email address with the Electronic Frontier Foundation, a founding
partner of the Let's Encrypt project and the non-profit organization that
develops Certbot? We'd like to send you email about our work encrypting the web,
EFF news, campaigns, and ways to support digital freedom.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(Y)es/(N)o: n
Account registered.

Which names would you like to activate HTTPS for?
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
1: api.greptilian.com
2: blog.greptilian.com
3: irc.greptilian.com
4: movies.greptilian.com
5: people.greptilian.com
6: unread.greptilian.com
7: wiki.greptilian.com
8: thedurbins.com
9: music.thedurbins.com
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Select the appropriate numbers separated by commas and/or spaces, or leave input
blank to select all options shown (Enter 'c' to cancel): 
Requesting a certificate for api.greptilian.com and 8 more domains

Successfully received certificate.
Certificate is saved at: /etc/letsencrypt/live/api.greptilian.com/fullchain.pem
Key is saved at:         /etc/letsencrypt/live/api.greptilian.com/privkey.pem
This certificate expires on 2026-02-10.
These files will be updated when the certificate renews.
Certbot has set up a scheduled task to automatically renew this certificate in the background.

Deploying certificate
Successfully deployed certificate for api.greptilian.com to /etc/apache2/sites-available/api.greptilian.com-le-ssl.conf
Successfully deployed certificate for blog.greptilian.com to /etc/apache2/sites-available/blog.greptilian.com-le-ssl.conf
Successfully deployed certificate for irc.greptilian.com to /etc/apache2/sites-available/irc.greptilian.com-le-ssl.conf
Successfully deployed certificate for movies.greptilian.com to /etc/apache2/sites-available/movies.greptilian.com-le-ssl.conf
Successfully deployed certificate for people.greptilian.com to /etc/apache2/sites-available/people.greptilian.com-le-ssl.conf
Successfully deployed certificate for unread.greptilian.com to /etc/apache2/sites-available/unread.greptilian.com-le-ssl.conf
Successfully deployed certificate for wiki.greptilian.com to /etc/apache2/sites-available/wiki.greptilian.com-le-ssl.conf
Successfully deployed certificate for thedurbins.com to /etc/apache2/sites-available/thedurbins.com-le-ssl.conf
Successfully deployed certificate for music.thedurbins.com to /etc/apache2/sites-available/music.thedurbins.com-le-ssl.conf
Congratulations! You have successfully enabled HTTPS on https://api.greptilian.com, https://blog.greptilian.com, https://irc.greptilian.com, https://movies.greptilian.com, https://people.greptilian.com, https://unread.greptilian.com, https://wiki.greptilian.com, https://thedurbins.com, and https://music.thedurbins.com

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
If you like Certbot, please consider supporting our work by:
 * Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
 * Donating to EFF:                    https://eff.org/donate-le
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pdurbin@server4:~$ 
```
