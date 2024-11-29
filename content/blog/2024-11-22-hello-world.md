---
date: 2024-11-29
title: bun run Init.res.mjs
---

Hello dear reader!

My name is Florian and I am a self-proclaimed ReScript enthusiast. ReScript is a modern and statically typed programming language that compiles to JavaScript. It is a Meta-Language-descendant where almost everything is an expression. But syntactically it is mostly influenced by JavaScript. This enables one to write idioms like

```res
 switch await myResultPromise {
  | Ok(data) => data->handleData
  | Error(error) error->handleError
 }
```

which is not possible in plain JavaScript, since `switch` is a statement there and [pattern-matching](https://github.com/tc39/proposal-pattern-matching) is still not available.

I use this language as a daily driver at work since it exists (2020) and I, among many others, help make it better every day by contributing to its documentation or standard library, by fixing editor tooling or compiler bugs or just by writing more blog articles like this one.

As you can imagine, this very website is also powered by ReScript, so I just have to give a shoutout to [bloodyowl.io](bloodyowl.io) for creating the very down-to-earth [`rescript-pages`](https://bloodyowl.github.io/rescript-pages/) static site generator.

Of course I also had to utilize cutting-edge tech like `bun`, hence the title. I am already looking forward to doing more smaller posts like this one.
