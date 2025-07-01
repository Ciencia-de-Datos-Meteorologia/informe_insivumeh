# builds the template example
latexmk -synctex=1 -jobname=tex_out/informe_insivumeh_example -interaction=nonstopmode -file-line-error -pdf -f main.tex
cp tex_out/informe_insivumeh_example.pdf informe_insivumeh_example.pdf
