mogrify -depth 4 -quality 70 -dither FloydSteinberg -define dither:diffusion-amount=50% -remap redblue.png -auto-level -quantize RGB -black-threshold 5% -black-point-compensation -posterize 5 -normalize -format png ./imgsoriglrg/*.*
