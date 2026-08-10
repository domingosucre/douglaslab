rm -rf public/*

npm run build

git add .
git commit -am "commiting files to gh-pages"

# this can break, when pushing from different machines"
# and since gh-pages is pure build output with nothing worth preserving,
# the simplest fix is to just wipe it and let subtree push recreate it fresh"

# If you'd rather not delete history for some reason (unlikely to matter here, but worth naming as the alternative), you could instead do a force push:
#
# git push origin `git subtree split --prefix public`:gh-pages --force

git push origin --delete gh-pages
git subtree push --prefix public origin gh-pages
