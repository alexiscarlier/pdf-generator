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
    expect(text_arranger.separate).to eq [".large", "My First Document", ".normal", ".paragraph", "This is my", ".italic", ".bold", "very first"]
  end
end

  describe '#get_string_indexes' do
  it 'gets the indexes for strings which will appear in the pdf' do
    separated_text = text_arranger.separate
    expect(text_arranger.get_string_indexes).to eq [1, 4, 7]
  end
end

describe '#get_arranged_text' do
it 'arranges the text in arrays with strings and commands' do
  text_arranger.separate
  text_arranger.get_string_indexes
  expect(text_arranger.get_arranged_text).to eq [[".large", "My First Document"], [".normal", ".paragraph", "This is my"], [".italic", ".bold", "very first"]]
end
end

end
