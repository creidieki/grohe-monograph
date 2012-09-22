LATEX = pdflatex
DOT = dot

GRAPHVIZFILES = tree_decomp_examples.pdf treelike_decomp_of_trees_examples.pdf
LATEXFILES = groheNotation.pdf groheCh4TreelikeDecompositions.pdf

all: $(GRAPHVIZFILES) $(LATEXFILES)

$(GRAPHVIZFILES): %.pdf: %.dot
	${DOT} -Tpdf:quartz $< -o $@

$(LATEXFILES): %.pdf: %.tex mydefs.sty
	${LATEX} $<
	${LATEX} $<

# tree_decomp_examples.pdf: tree_decomp_examples.dot
# 	${DOT} -Tpdf:quartz tree_decomp_examples.dot -o tree_decomp_examples.pdf

# treelike_decomp_of_trees_examples.pdf: treelike_decomp_of_trees_examples.dot
# 	${DOT} -Tpdf:quartz treelike_decomp_of_trees_examples.dot -o treelike_decomp_of_trees_examples.pdf

clean:
	-rm -f $(GRAPHVIZFILES) $(LATEXFILES)

