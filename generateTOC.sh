# This requires moreutils (available in community repo on arch) and gd-md-toc, which
# is in this repo but downloaded from https://github.com/ekalinin/github-markdown-toc
cat opinionatedeng.md | ./gh-md-toc - | cat - opinionatedeng.md | sponge opinionatedeng.md
