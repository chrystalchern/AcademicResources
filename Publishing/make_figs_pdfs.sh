# often, journals will ask that you submit all images as pdf files.
# having all images as pdf files also makes latex render more quickly.
# run this script (bash make_figs_pdfs.sh) in your figures directory to convert all jpgs and pngs to pdfs.

shopt -s globstar
for i in figures/**/*.png
    do
    figuredate=$(date -r $i +%s)
    lastdate=$(<date_png_last_converted.txt)
    if [ $figuredate -ge $lastdate ]
    then
        echo $i
        convert $i -background white -alpha remove -alpha off $i
        img2pdf $i -o ${i/.png/.pdf}
    fi  
done

sleep 5
date +%s > date_png_last_converted.txt
