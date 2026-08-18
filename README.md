# TO DO

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

[ ] - copyright footer

[ ] - logo area

[ ] - metatag data (the modern ones)

[ ] - json+ld metatags

[x] - aria MOST places

[ ] - robots.txt

[ ] - sitemap.xml

[ ] - imagesitemap.xml

[ ] - humans.txt

[x] - 404 page added with new design

[ ] - finish 404 page content

[ ] - fix the people partial because the h1 tags are too big

[ ] - front page header area

## ARIA

Uses a disclosure pattern (a labeled toggle button revealing a hidden panel),
not (for example) role="menu" role="menuitem"- long story short, better for compliance.

(longer story) ARIA's menu role is meant for application-style menus, like a desktop app's File menu

### check the keyboard tabbing through menus.

[ ] - test the site using a screenreader (orca in linux)

## shortcodes

Usage:

```
{{< button link="/contact/" text="Join the lab!" >}}

```

If you're linking to an external link, add 'external="true"' and it will add the right aria label, example:

{{< button link="https://ucsf.com" text="some text" external="true" >}}
