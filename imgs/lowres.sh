rm -r imgsorig
rmdir imgsorig
mkdir imgsorig
echo "Copying"
rsync -r imgsorig.bak/ imgsorig
echo "Mogrify running"
mogrify -fill '#333333FF' -opaque none -alpha off -depth 4 -resize 262144@ -quality 70 -dither FloydSteinberg -define dither:diffusion-amount=50% -remap redblue.png -auto-level -quantize RGB -black-threshold 5% -black-point-compensation -posterize 5 -normalize -format png ./imgsorig/*.*
echo "Removing old files"
rm ./imgsorig/*.jpg
rm ./imgsorig/*.jpeg
rm ./imgsorig/*.gif
echo "░░░░░DONE░░░░░"