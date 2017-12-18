require "prawn"
require "./lib/pdf_renderer.rb"
require "./lib/text_arranger"

text = '.large
.bold
My First Document
.italic
.normal
.paragraph
This is my
.large
very first
.regular
.large
.paragraph
By Alexis Carlier :)'

text_arranger = TextArranger.new(text)
text_arranger.separate
text_arranger.get_string_indexes
arranged_text = text_arranger.get_arranged_text

pdf = Prawn::Document.new
pdf_renderer = PdfRenderer.new(arranged_text, pdf)

pdf_renderer.apply_formatting
pdf_renderer.render
