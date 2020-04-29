# Selfhost all the things!

![](chall.png)

When logging in to mantle, you are given one option, discord.

![](discord.png)

When you log in, you are given a simple chat application:

![](mantle.png)

I did find some XSS vulns, but it doesn't seem too useful:

![](xss.png)

![](xss2.png)

I actually did have a bit of fun with it though! :joy:

```html
<img src=x onerror="alert('Click the button 100 times!'); for (var i = 100; i > 0; i--) { alert(`${i} more times!`) }; alert('Good job :)');">
```

![](xss3.png)

Unfortunately, that wasn't it. Time to keep searching.

There was a hint that came with the challenge:

![](hint.png)

Maybe if we login with flag instead of discord, it will give us the flag?

Let's try it.

I edited the request headers with burp, and I just changed the `with` parameter from `discord` to `flag`.

![](burp.png)
![](burp2.png)

And sure enough, when we forward the request, we get the flag!

![](flag.png)

Flag: `rtcp{rtcp-*is-s/ort-of-se1fh0st3d}`
