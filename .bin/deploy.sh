#!/usr/bin/env bash
echo $npm_package_gh_pages_url
echo $npm_package_gh_pages_branch
echo $npm_package_homepage
rm -rf dist .gh-pages
jus build . dist
git clone $npm_package_gh_pages_url .gh-pages --branch $npm_package_gh_pages_branch --bare --depth 1
git --git-dir=.gh-pages --work-tree=dist add -A
git --git-dir=.gh-pages --work-tree=dist commit -m deploy
git --git-dir=.gh-pages --work-tree=dist push $npm_package_gh_pages_url $npm_package_gh_pages_branch
opener $npm_package_homepage
