FIGS=fig1.pdf fig2.pdf fig3.pdf fig1b.pdf fig3b.pdf fig1c.pdf fig3c.pdf fig1d.pdf fig3d.pdf fig1e.pdf fig3e.pdf fig1c2.pdf fig1b2.pdf fig1d2.pdf fig1e2.pdf fig4.pdf fig5.pdf fig6.pdf fig6b.pdf fig6c.pdf fig6c2.pdf fig6c3.pdf fig4b.pdf

presentation.pdf: presentation.tex $(FIGS)	
	pdflatex presentation.tex

%.pdf: %.dot
	dot -Tpdf $< -o $@
