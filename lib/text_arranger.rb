class TextArranger

  attr_reader :text, :separated_text, :string_indexes, :arranged_text

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
    @string_indexes = string_indexes
  end

  def get_arranged_text
    arranged_text = []
    arranged_text.push(@separated_text[0..@string_indexes[0]])
    i = 0
    while i < @string_indexes.length - 1
      arranged_text.push(@separated_text[@string_indexes[i]+1..@string_indexes[i+1]])
      i += 1
    end
    @arranged_text = arranged_text
  end

end
