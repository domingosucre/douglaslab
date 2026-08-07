rm -rf public/*

npm run build

git add .
git commit -am "commiting files to gh-pages"
git subtree push --prefix public origin gh-pages
