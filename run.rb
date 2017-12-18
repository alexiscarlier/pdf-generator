require "prawn"
require "./lib/pdf_renderer.rb"
require "./lib/text_arranger"

text = '.large
My First Document
.bold
.italic
.normal
This is my
.large
very first'

text_arranger = TextArranger.new(text)
text_arranger.separate
text_arranger.get_string_indexes
arranged_text = text_arranger.get_arranged_text

pdf = Prawn::Document.new
pdf_renderer = PdfRenderer.new(arranged_text, pdf)

pdf_renderer.apply_formatting
pdf_renderer.render


# require "prawn"
# require "./lib/pdf_renderer.rb"
#
# pdf = Prawn::Document.new
# arranged_text = [['.large', 'My First Document'], ['.bold', '.italic', '.normal', '.regular', 'Alexis']]
#
# pdf_renderer = PdfRenderer.new(arranged_text, pdf)
#
# pdf_renderer.apply_formatting
# pdf_renderer.render
