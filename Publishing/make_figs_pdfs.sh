# often, journals will ask that you submit all images as pdf files.
# having all images as pdf files also makes latex render more quickly.
# run this script (bash make_figs_pdfs.sh) in your figures directory to convert all jpgs and pngs to pdfs.

for i in *.jpg ; do convert $i -background white -alpha remove -alpha off $i; done
for i in *.jpg ; do img2pdf $i -o ${i%.jpg}.pdf; done

for i in *.png ; do convert $i -background white -alpha remove -alpha off ${i%.png}_bg.png; done
for i in *_bg.png ; do img2pdf $i -o ${i%_bg.png}.pdf; done