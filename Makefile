LATEX = pdflatex
DOT = dot

all: tree_decomp_examples.pdf treelike_decomp_of_trees_examples.pdf

tree_decomp_examples.pdf: tree_decomp_examples.dot
	${DOT} -Tpdf:quartz tree_decomp_examples.dot -o tree_decomp_examples.pdf

treelike_decomp_of_trees_examples.pdf: treelike_decomp_of_trees_examples.dot
	${DOT} -Tpdf:quartz treelike_decomp_of_trees_examples.dot -o treelike_decomp_of_trees_examples.pdf

clean:
	-rm -f tree_decomp_examples.pdf treelike_decomp_of_trees_examples.pdf

