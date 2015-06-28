input="sample.txt"
output="comparison.png"
size=100
convert +antialias -density 228 -fill red -font UbuntuMono-R.ttf -pointsize $size label:@$input ubuntu.png
convert +antialias -density 228 -fill green -font Bront.ttf -pointsize $size label:@$input bront.png
convert bront.png ubuntu.png -compose multiply -composite comparison-large.png
convert -resize 25% comparison-large.png comparison.png
rm bront.png ubuntu.png comparison-large.png
echo "Rendered $input to $output"
