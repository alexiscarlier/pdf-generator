class TextArranger

  attr_reader :text, :separated_text

  def initialize(text)
    @text = text
  end

  def separate
    @separated_text = @text.split(/\n+/)
  end

  def get_string_indexes
    i = 0
    string_indexes = []
    while i < @separated_text.length
      if @separated_text[i][0] != '.'
        string_indexes.push(i)
      end
      i += 1
    end
    string_indexes
  end



end
