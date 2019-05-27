#!/bin/bash
# This script assembles the seprate files into the larger opinionatedeng.md file
# in the folder below, this is done so multiple editors can be open simultainously
# in split viwe, makes changes easier to track, and makes the in-dev rendering much
# easier, since rendering a super large md file in realtime is slow

# I'm bad at bash scripting and if it works it's good enough for me. Don't judge
# this solution awkwardly needs some trailing newlines at the end of each file

# merge prefix files
cat $(ls | grep .md | grep p) > x1.md
wait
echo "prefix done"
# merge chapter files
cat 0.md 1.md 2.md 3.md 4.md 5.md 6.md 7.md 8.md 9.md > x2.md
wait
cat 10.md 11.md 12.md 13.md 14.md 15.md 16.md 17.md 18.md 19.md >> x2.md
wait
cat 20.md 21.md 22.md 23.md 24.md 25.md 26.md 27.md 28.md 29.md >> x2.md
wait
cat 30.md 31.md >> x2.md
echo "chapters done"
# merge appendix files
cat $(ls | grep .md | grep a) > x3.md
wait
echo "appendix done"
# merge prefix, chapter, and appendix
cat $(ls | grep .md | grep x) > y.md
wait
echo "merged, removing temp files"
rm x1.md x2.md x3.md
echo "removed temp files"
# fix image paths (replace ../imgs/ with ./imgs/ )
sed 's/.\/imgs\//..\/imgs\//g' y.md > indev.md
echo "indev file generated"
mv y.md ../opinionatedeng.md
echo "opininionatedeng.md replaced"
