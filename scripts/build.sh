#!/bin/bash

mkdir -p dist

function build() {
    echo "building $1.md to dist/$1.html"
    pandoc "src/$1.md" -s --highlight-style pygments -c '../static/github.css' -c '../static/styles.css' --mathjax='//zenozeng.github.io/MathJax/init.js' -o "dist/$1.html"
}

for file in src/*.md
do
    file=$(echo $file | sed 's/src\///' | sed 's/\.md//')
    build $file
done

cp src/*.gif dist
cp src/*.png dist
cp src/*.jpg dist
