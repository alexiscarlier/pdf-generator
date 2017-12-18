class TextArranger

  attr_reader :text, :separated_text, :string_indexes

  def initialize(text)
    @text = text
  end

  def separated_text
    @separated_text
  end

  def separate
    @separated_text = @text.split(/\n+/)
  end

  def get_string_indexes
    string_indexes = []
    @separated_text.each_with_index do |text, index|
      if text[0] != '.'
        string_indexes.push(index)
      end
    end
    @string_indexes = string_indexes
  end

  def get_arranged_text
    arranged_text = []
    arranged_text.push(separated_text[0..@string_indexes[0]])
    i = 0
    while i < @string_indexes.length - 1
      arranged_text.push(separated_text[@string_indexes[i]+1..@string_indexes[i+1]])
      i += 1
    end
    arranged_text
  end

end
