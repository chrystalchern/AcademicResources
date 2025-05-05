# often, journals will ask that you submit all images as pdf files.
# having all images as pdf files also makes latex render more quickly.
# run this script (bash make_figs_pdfs.sh) to convert all pngs to pdfs.

shopt -s globstar
for i in Figures/**/*.png
    do
    figuredate=$(date -r $i +%s)
    lastdate=$(cat date_png_last_converted.txt)
    if [ $figuredate -ge $lastdate ]
    then
        echo $i
        magick $i -background white -alpha remove -alpha off $i
        img2pdf $i -o ${i/.png/.pdf}
    fi  
done

sleep 5
date +%s > date_png_last_converted.txt
