class PdfRenderer

  LARGE = 25
  NORMAL = 15

  attr_reader :arranged_text, :pdf

  def initialize(arranged_text, pdf)
    @pdf = pdf
    @arranged_text = arranged_text
  end

  def apply_formatting
    arranged_text.each do |text_block|
      adjust_size(text_block)
      adjust_style(text_block)
      adjust_paragraphs(text_block)
      create_text(text_block)
    end
  end

  def adjust_paragraphs(text_block)
    pdf.move_down 15 if text_block.include?(".paragraph")
  end

  def create_text(text_block)
    pdf.text text_block.last
  end

  def adjust_style(text_block)
    pdf.font "Courier", :style => :bold if text_block.include?(".bold")
    pdf.font "Courier", :style => :italic if text_block.include?(".italic")
    pdf.font "Courier", :style => :normal if text_block.include?(".regular")
  end

  def adjust_size(text_block)
    pdf.font_size = LARGE if text_block.include?(".large")
    pdf.font_size = NORMAL if text_block.include?(".normal")
  end

  def render
    pdf.render_file "test.pdf"
  end
end
