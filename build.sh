#!/bin/bash

pandoc 02.md -s --highlight-style pygments -c github.css --mathjax -o 02.html
