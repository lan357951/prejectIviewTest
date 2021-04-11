#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

# 构建
npm run build

# cd 到构建输出的目录下 
cd dist

git init
git add -A
git commit -m 'deploy'

# 部署到 https://github.com/lan357951/prejectIviewTest.git
git push -f https://github.com/lan357951/prejectIviewTest.git master:gh-pages

cd -