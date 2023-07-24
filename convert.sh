#!/bin/bash

# Create PDF files from the ADOC source file.

export GS=/opt/homebrew/bin/gs
themes=(letter a4)

for theme in "${themes[@]}"; do
	asciidoctor-pdf -v -a optimize -a pdf-fontsdir="fonts;GEM_FONTS_DIR" --theme theme-$theme.yml faq.adoc -o faq-en-$theme.pdf
done
