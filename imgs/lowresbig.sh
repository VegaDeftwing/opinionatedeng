rm -r imgsorigbg
rmdir imgsorigbg
mkdir imgsorigbg
echo "Copying"
rsync -r imgsorig.bak/ imgsorigbg
echo "Mogrify running"
mogrify -fill '#333333FF' -opaque none -alpha off -depth 8 -quality 70 -dither FloydSteinberg -resize 921600@> -define dither:diffusion-amount=50% -remap redblue.png -auto-level -quantize RGB -black-threshold 5% -black-point-compensation -posterize 10 -normalize -format png ./imgsorigbg/*.*
echo "Removing old files"
rm ./imgsorigbg/*.jpg
rm ./imgsorigbg/*.jpeg
rm ./imgsorigbg/*.gif
rm ./imgsorigbg/*.png~
echo "░░░░░DONE░░░░░"