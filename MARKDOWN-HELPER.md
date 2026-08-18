# So..

I created a render-link.html shortcode that SHOULD detect when a link is external,
and ensure it gets the correct ARIA label. If not, let me know.

Otherwise, the rest is basic: you already know how to do it.

# Adding links and images in content pages

You don't need to think about any of this technical explanation below —
just write links and images the normal, obvious way, and the site handles
the rest automatically.

## Links

Write links the standard way:

    [link text](url)

**Linking to another page on this site:**

    [see our downloads page](/downloads/)

**Linking to an outside website:**

    [Dynamicland](https://dynamicland.org/)

No special syntax needed. Internal links (the first kind)
automatically get pointed to the right place, and external links
(example, the Dynamicland one) should automatically open in a new browser tab.

Which somehow matters to the ARIA guidelines (in my vague recollection).

## Images

Same idea — just write:

    ![description of the image](/images/whatever.png)

The description in the brackets matters: it's read aloud by screen readers
for visually impaired visitors, and shown if the image fails to load. So
please make it a real, brief description of what's in the image, not
something like "image" or left blank.

## One thing to always do

Always start internal links and image paths with a `/` — e.g. `/downloads/`
or `/images/photo.png`, not `downloads/` or `images/photo.png` without the
leading slash. Either the page or image needs to exist at that path
in the site's files, but the leading `/` is what tells the site
"this is a page on our own site," so please don't leave it off.

Questions or something looks broken? Just ask me (kris).
