input="sample.txt"
size=100
declare -a bases=("UbuntuMono" "DejaVuSansMono")

for base in "${bases[@]}"
do
   echo "Rendering $input using $base..."

   convert +antialias -density 228 -fill red -font $base.ttf -pointsize $size label:@$input $base.png
   convert +antialias -density 228 -fill green -font $base-Bront.ttf -pointsize $size label:@$input $base-Bront.png
   convert $base-Bront.png $base.png -compose multiply -composite $base-comparison-large.png
   convert -resize 25% $base-comparison-large.png $base-comparison.png
   rm $base.png $base-Bront.png $base-comparison-large.png

   echo "Rendered $input to $base-comparison.png"
done
