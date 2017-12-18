class PdfRenderer

  LARGE = 25
  NORMAL = 15

  attr_reader :arranged_text, :pdf

  def initialize(arranged_text, pdf)
    @pdf = pdf
    @arranged_text = arranged_text
  end

  def arranged_text
    @arranged_text
  end

  def pdf
    @pdf
  end

  def apply_formatting
    arranged_text.each do |text_block|
      if text_block.include?(".large")
        pdf.font_size = LARGE
      end
      if text_block.include?(".bold")
        pdf.font "Courier", :style => :bold
      end
      if text_block.include?(".italic")
        pdf.font "Courier", :style => :italic
      end
      if text_block.include?(".normal")
        pdf.font_size = NORMAL
      end
      if text_block.include?(".regular")
        pdf.font "Courier", :style => :normal
      end
      if text_block.include?(".paragraph")
        pdf.move_down 15
      end
      pdf.text text_block.last
    end
  end


  def render
    pdf.render_file "test.pdf"
  end
end
