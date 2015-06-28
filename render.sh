input="sample.txt"
size=100
convert +antialias -density 228 -fill red -font UbuntuMono.ttf -pointsize $size label:@$input UbuntuMono.png
convert +antialias -density 228 -fill green -font UbuntuMono-Bront.ttf -pointsize $size label:@$input UbuntuMono-Bront.png
convert UbuntuMono-Bront.png UbuntuMono.png -compose multiply -composite UbuntuMono-comparison-large.png
convert -resize 25% UbuntuMono-comparison-large.png UbuntuMono-comparison.png
rm UbuntuMono-Bront.png UbuntuMono.png UbuntuMono-comparison-large.png
echo "Rendered $input to UbuntuMono-comparison.png"
