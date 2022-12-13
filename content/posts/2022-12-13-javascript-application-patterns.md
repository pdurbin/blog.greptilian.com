---
title: Javascript application patterns
date: 2022-12-13T01:12:04Z
draft: false
publishDate: 2020-01-01
featured_image: /images/javascript.svg
---
Today I listened to [Syntax 548][], titled "Rendering Methods Explained", which covered a question in the [State of JS][] survey that asks, "Which of the following architecture and rendering patterns have you used in the last year?"

The survey is ongoing but an [issue][] and a [localization file][] show the following options:

- Single Page Application (SPA): Apps that run entirely in the browser
- Multi-Page Application (MPA): Apps that run entirely on the server, with minimal client-side dynamic behavior
- Static Site Generation (SSG): Pre-rendered static content, with or without a client-side dynamic element
- Server-Side Rendering (SSR): Dynamically rendering HTML content on the server before rehydrating it on the client
- Partial Hydration: Only hydrating some of your components on the client (e.g. React Server Components)
- Progressive Hydration: Controlling the order of component hydration on the client
- Islands Architecture: Isolated islands of dynamic behavior with multiple entry points in an otherwise static site (Astro, Eleventy)
- Progressive Enhancement: Making sure an app is functional even without JavaScript
- Incremental Static Generation: Being able to dynamically augment or modify a static site even after the initial build (Next.js ISR, Gatsby DSG)
- Streaming SSR: Breaking down server-rendered content in smaller streamed chunks
- Resumability: Serializing framework state on the server so the client can resume execution with no duplicated code execution.
- Edge Rendering: Altering rendered HTML at the edge before sending it on to the client

Phew! Quite a list!

[Syntax 548]: https://syntax.fm/show/548/rendering-methods-explained
[State of JS]: https://stateofjs.com/en-us/
[issue]: https://github.com/Devographics/surveys/issues/56
[localization file]: https://github.com/Devographics/locale-en-US/blob/d496d90e67b5dd9e5062a24a51b8a154e8716b76/state_of_js.yml#L329-L378
