class PdfRenderer

  attr_reader :arranged_text, :pdf

  def initialize(arranged_text, pdf)
    @pdf = pdf
    @arranged_text = arranged_text
  end

  def render
    @pdf.render_file "test.pdf"
  end
end
