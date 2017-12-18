require'text_arranger'

describe TextArranger do
  text = (
'.large
My First Document
.normal
.paragraph
This is my
.italic
.bold
very first'
  )
  text_arranger = TextArranger.new(text)

  describe '#separate' do
  it 'separates the text based on what method calls they will receive' do
    expect(text_arranger.separate()).to eq [".large", "My First Document", ".normal", ".paragraph", "This is my", ".italic", ".bold", "very first"]
  end
end

  describe '#get_string_indexes' do
  it 'separates the text based on what method calls they will receive' do
    separated_text = text_arranger.separate()
    expect(text_arranger.get_string_indexes(separated_text)).to eq [1, 4, 7]
  end
end

end
