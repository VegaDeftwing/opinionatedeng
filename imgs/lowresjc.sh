rm -r imgsorigjc
rmdir imgsorigjc
mkdir imgsorigjc
echo "Copying"
rsync -r imgsorig.bak/ imgsorigjc
echo "Mogrify running"
mogrify -fill '#333333FF' -opaque none -alpha off -depth 4 -map redblue-gradient.png -quality 70 -format png -posterize 4 ./imgsorigjc/*.*
echo "Removing old files"
rm ./imgsorigjc/*.jpg
rm ./imgsorigjc/*.jpeg
rm ./imgsorigjc/*.gif
rm ./imgsorigjc/*.png~
echo "░░░░░DONE░░░░░"