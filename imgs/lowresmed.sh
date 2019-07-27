rm -r imgsorigm
rmdir imgsorigm
mkdir imgsorigm
echo "Copying"
rsync -r imgsorig.bak/ imgsorigm
echo "Mogrify running"
mogrify -fill '#333333FF' -opaque none -alpha off -depth 4 -quality 70 -dither FloydSteinberg -resize 640000@> -define dither:diffusion-amount=50% -remap redblue.png -auto-level -quantize RGB -black-threshold 5% -black-point-compensation -posterize 8 -normalize -format png ./imgsorigm/*.*
echo "Removing old files"
rm ./imgsorigm/*.jpg
rm ./imgsorigm/*.jpeg
rm ./imgsorigm/*.gif
rm ./imgsorigm/*.png~
echo "░░░░░DONE░░░░░"