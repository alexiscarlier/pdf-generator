class TextArranger

  def initialize(text)
    @text = text
  end

  def separate
    @text.split(/\n+/)
  end

end
