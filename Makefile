TexFileName = visual_trans

${TexFileName}.pdf : 
	xelatex ${TexFileName}.tex
	xelatex ${TexFileName}.tex
	bibtex ${TexFileName}
	xelatex ${TexFileName}.tex

clean : 
	rm -f ${TexFileName}.aux ${TexFileName}.bbl ${TexFileName}.blg ${TexFileName}.log ${TexFileName}.out ${TexFileName}.pdf ${TexFileName}.toc
