input="sample.txt"
output="sample-Bront.png"
convert -density 228 -resize 25% -font Bront.ttf -pointsize 70 label:@$input $output
echo "Rendered $input to $output"
