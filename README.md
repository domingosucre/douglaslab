## HOW-TO

install hugo (see: https://gohugo.io/installation/ )

You can run the site locally at http://localhost:1313

```
hugo serve
```

To change layout-related things, you have to run 'npm run dev', or

```
./run.sh
```

because tailwindcss and its dependencies are nodejs.

I used tailwind in this project, because it's so well-documented, that a lab-member (or LLM)
won't struggle to understand my own custom-coded css, if they need to change anything.

## To Deploy

```
./deploy.sh

```

You will probably need to change that script to match your github hosting.

## other notes

page content is stored under

content/

## people page

Change the data on this page here:

data/people.toml

Note, you can set their status as current or former labmembers

## copyright in footer

Most of the template loads from layouts/all.html, but the footer text is customized (confusingly) under.

i18n/en.toml
i18n/es.toml

This is because it was the only sensible way I could think to do it for a multi-language site.

## pdf downloads

I showed the site to a frontier LLM (Claude), and received this odd note:
Dropbox links: Five of the six PDFs use dl.dropbox.com/u/... links. As far as I know, Dropbox retired that old public-folder URL scheme years ago, so those links are probably dead. Click through to confirm. If they are, host the PDFs in static/ or link to a DOI or PubMed Central copy instead.

## TO DO

[x] - layout fixed, now - i think

[x] - the markdown isnt loading pictures, at github/prod and its something to do with layouts/\_default/\_markup/render-image.html

[x] - lighten the top menu color, its too faded out

[x] - translate pages into markdown files

[x] - create a button for front page 'join the lab'

[x] - replace h1,h2,h3, etc fonts with Lexend, because they look better

[x] - upscale the other images

[ ] - usability /screenreader (still untested)

[x] - keyboard navigation

[x] - nav menu usability

[x] - create mobile menu

[x] - copyright footer

[x] - logo area

[x] - resize the images in static/images/og_research (etcetera) to 1200x630

[x] - json+ld metatags

[x] - aria MOST places

[x] - robots.txt

[x] - sitemap.xml

[x] - imagesitemap.xml

[x] - humans.txt

[x] - 404 page added with new design

[ ] - finish 404 page content

[x] - (i think this was fixed a while ago) fix the people partial because the h1 tags are too big

[x] - front page header area

[x] - people-page(s) and downloads have weird image alignments. fix

## ARIA

Uses a disclosure pattern (a labeled toggle button revealing a hidden panel),
not (for example) role="menu" role="menuitem"- long story short, better for compliance.

(longer story) ARIA's menu role is meant for application-style menus, like a desktop app's File menu

## shortcodes

Usage:

```
{{< button link="/contact/" text="Join the lab!" >}}

```

If you're linking to an external link, add 'external="true"' and it will add the right aria label, example:

{{< button link="https://ucsf.com" text="some text" external="true" >}}
