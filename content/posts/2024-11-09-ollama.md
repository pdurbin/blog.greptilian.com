---
title: "Ollama, Enchanted, Open Web UI, and Zed"
slug: ollama-enchanted-open-web-ui-and-zed
date: 2024-11-09T16:27:31Z
draft: false
publishDate: 2020-01-01
featured_image: /images/ollama.svg
---
Listening to the [JS Party](https://changelog.com/jsparty/343) episode about Jerod Santo's tool box motivated me to finally get Ollama working properly.

I had already played around with Ollama when I gave my friend Slava's [datachat](https://github.com/gdcc/datachat) a whirl. In that case, per the README, I spun up a Docker image and ran the following to pull the 4-5 GB in:

```
docker exec -it ollama /bin/bash
ollama pull llama3
```

Then Slava's app, which is pretty neat by the way, worked just fine.

In the podcast, Jerod was talking specifically about [Enchanted](https://github.com/AugustDev/enchanted), so that was my starting point. The README was a little light on how to install Ollama but the [Ollama website](https://ollama.com) itself was very clear. On Mac, it's just a zip file you unpack and drag into your "Applications" folder.

I was prompted to install the Ollama CLI, which I did, and it told me how to download and run a model:

```
ollama run llama3.2
```

To check if Ollama's working, you could try this, from the Ollama README:

```
curl http://localhost:11434/api/generate -d '{
  "model": "llama3.2",
  "prompt":"Why is the sky blue?"
}'
```

You should get a bunch of JSON back.

Ollama is just a backend and they have a long [list of frontends](https://github.com/ollama/ollama#community-integrations) in their README, including Enchanted.

Enchanted ended up not working well for me. As I [mentioned](https://changelog.zulipchat.com/#narrow/channel/456196-jsparty/topic/343.3A.20Digging.20through.20Jerod.20Santo.E2.80.99s.20tool.20box/near/479803917) in episode's comments, I can't simply type messages over and over again in the prompt. Instead, I have to click in the prompt each time I want to type again. There are a [couple](https://github.com/AugustDev/enchanted/issues/161) [issues](https://github.com/AugustDev/enchanted/issues/137) about this.

Looking for an alternative UI, I went back to the list and picked the one at the top, [Open Web UI](https://github.com/open-webui/open-webui). It worked fine but I do like me a fat client.

Over the last few months, I've been playing with a new editor called [Zed](https://zed.dev) and I know that two of its core features are that it's multiplayer and AI ready. Here's how I configured Zed for Ollama:

- At the bottom right, click the "Assistant" button. It looks like a star.
- At the top right, click the hamburger button and then "Configure".
- On the "configure your assistant" screen, scroll down until you see Ollama. It should say "connected" and above this, click "open new context".
- Now you should be at a prompt and can start sending messages to Ollama.

I've played with ChatGPT, of course, but it's fun that Ollama is completely free, open source, and runs locally on my laptop.
