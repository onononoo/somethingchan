# somethingchan

an authoritative and entirely wrong field guide to git, github, and gitlab. certified gem.
made by hand by kai. mascot: kara eklund (art by hitsuji goods). zero javascript.

## rule #1

**no javascript. no scripts. ever.**

every page ships `content-security-policy: script-src 'none'`, so even if a
`<script>` tag sneaks in during a bad merge, the browser refuses to run it.
there are no `on*=` event attributes and no `javascript:` links anywhere.

## pages

| path | what's there |
| --- | --- |
| `index.html` | the field guide: species tabs, commit graph, terminal, commands, math, threat meters, bestiary, atlas, history, comparison, quiz, hook simulator, `.git` explorer, css clock, faq teaser linking to /qa/ |
| `lab.html` | contribution graph, 3d commit cube, ci pipeline, merge conflict puzzle, corrupted object viewer, code review simulator, museum of waiting, man page |
| `game.html` | *rebase dungeon*, a text adventure with rooms (`:target`), inventory (checkboxes) and locked doors (`:has()`) |
| `js/` | big angry text that only shows if your browser has javascript enabled, plus a css-only environment report |
| `qa/` | the faq, as an imageboard: questions are threads, admin answers. catalog view, 3 themes, hide threads, quote previews, image expand — all css |
| `ip/` | your ip address bouncing and dancing around the screen |
| `soy/` | the gitjak soytionary: git, sharty and javascript terms, filter chips, gem/coal voting with a css-counted tally, a "nooo you can't just" panel, and a rosetta stone |
| `kara/` | kara eklund, the official mascot: profile, filterable gallery with popover lightbox, and a hotspot map of her bag |
| `arcade/` | gem-tac-toe (css win detection, all 8 lines), whack-a-javascript (css counter + css timer), and the soy slots. "new game" is a plain `<button type="reset">` |
| `os/` | somethingos: a desktop made of `popover="manual"` windows — taskbar, start menu, notepad, ms-dos prompt, recycle bin, image viewer, minesweeper (css win/lose), a css uptime clock, and a recurring javascript.exe crash |
| `map/` | a fake, decorative "ddos map": javascript-themed sources fire at somethingchan hq and the csp blocks them all. svg dot map, css arcs, smil packets, css counters |
| `wiki/` | somethingwiki: articles with talk / edit / history tabs (all `:target`), infoboxes, footnotes, hover previews, and a random-article link that is 6 links cycling on a css timer |
| `status/` | a plain status page: 90-day uptime bars with hover details, incident history, metrics. javascript is a component and is always "blocked" |
| `docs/` | how every technique works: code tabs, live demos, a page × technique matrix, and a changelog stepper generated from `feed.xml` |
| `support.html` | source + donate |
| `license.html` | the mit license, rendered like a man page |
| `404.html` | lost object |
| `feed.xml` + `feed.xsl` | changelog, turned into a page by xslt |

## how the /js page works without javascript

1. the big text is visible by default.
2. a `<style>` inside `<noscript>` hides it. browsers only use that style when scripting is off.
3. `@media (scripting: none)` hides it a second way.
4. so the text shows only to browsers that *would* run javascript, and the page itself runs none.

## how /ip/ works without javascript

a static page can't know your ip. so the page embeds `https://icanhazip.com/` in a
sandboxed iframe (`sandbox=""`, so no scripts run in there either). your browser
fetches it directly; somethingchan never sees it. css filters recolor the frame and
two independent animations bounce it like a dvd logo.

## languages

| language | where |
| --- | --- |
| html | every page |
| css | `css/somethingchan.css`, `css/lab.css`, `css/js.css`, `css/qa.css`, `css/ip.css`, `css/shame.css`, `css/soy.css`, `css/kara.css`, `css/arcade.css`, `css/os.css`, `css/map.css`, `css/wiki.css`, `css/status.css`, `css/bland.css`, `css/docs.css` |
| svg + smil | `assets/*.svg`, inline graphs |
| mathml | the math section on the home page |
| xml + xslt | `feed.xml`, `feed.xsl`, `sitemap.xml` |
| json | `manifest.webmanifest` |
| icalendar | `events.ics` |
| markdown | this file |
| plain text | `humans.txt`, `robots.txt`, `.well-known/security.txt`, `license` |
| javascript | nowhere. never. |

## style

- quiet by default: `css/bland.css` loads last on every page and sets muted greys, a system font and thin borders. the theme toggle switches to plain dark grey.
- everything is lowercase, including code comments. the one exception is the text on `/js`.

## running it *locally*

there is no build step. open `index.html` in a browser, or serve the folder:

```sh
python -m http.server 8765
```

## *support* :3

source code is on my github under the repo **somethingchan**. please donate: <https://kaieklund.vercel.app/>
