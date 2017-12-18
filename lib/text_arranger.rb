class TextArranger

  def initialize(text)
    @text = text
  end

  def separate
    @text.split(/\n+/)
  end

  def get_string_indexes
    arr = self.separate
    i = 0
    strings_indexes = []
    while i < arr.length
      if arr[i][0] != '.'
        strings_indexes.push(i)
      end
      i += 1
    end
    strings_indexes
  end
end
