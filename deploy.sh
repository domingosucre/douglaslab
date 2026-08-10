rm -rf public/*

npm run build

git add .
git commit -am "commiting files to gh-pages"

# this can break, when pushing from different machines"
# and since gh-pages is pure build output with nothing worth preserving,
# the simplest fix is to just wipe it and let subtree push recreate it fresh"

# actually, dont do this below, or Github resets your github pages settings, when 
# it notices gh-pages being empty
#git push origin --delete gh-pages
#git subtree push --prefix public origin gh-pages

git push origin `git subtree split --prefix public`:gh-pages --force

