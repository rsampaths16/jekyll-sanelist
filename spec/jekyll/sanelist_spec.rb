# frozen_string_literal: true

RSpec.describe Jekyll::Sanelist::SanelistFilter do
  include Jekyll::Sanelist::SanelistFilter

  it "throws exception when input isn\'t array" do
    expect {
      sanelist('Not an array')
    }.to raise_error(ArgumentError, 'Input to filter sanelist is not an Array')
  end

  it 'gives empty list for an empty list' do
    input = []
    output = sanelist(input)

    expect(output).to have(0).things
  end

  it 'gives one item for a sinleton list' do
    input = ['foo']
    output = sanelist(input)

    expect(output).to have(1).things

    expect(output[0]).to eq item(input[0], true, true)
  end

  it 'gives two items spearated by a delimiter for a list of two item' do
    input = ['foo', 'bar']
    output = sanelist(input)

    expect(output).to have(3).things

    expect(output[0]).to eq item(input[0], true, false)
    expect(output[1]).to eq delimiter(true, true)
    expect(output[2]).to eq item(input[1], false, true)
  end

  it 'gives three items spearated by two delimiters for a list of three item' do
    input = ['foo', 'and', 'bar']
    output = sanelist(input)

    expect(output).to have(5).things

    expect(output[0]).to eq item(input[0], true, false)
    expect(output[1]).to eq delimiter(true, false)
    expect(output[2]).to eq item(input[1], false, false)
    expect(output[3]).to eq delimiter(false, true)
    expect(output[4]).to eq item(input[2], false, true)
  end

  it 'gives four items spearated by three delimiters for a list of four item' do
    input = ['foo', 'and', 'bar', 'list']
    output = sanelist(input)

    expect(output).to have(7).things

    expect(output[0]).to eq item(input[0], true, false)
    expect(output[1]).to eq delimiter(true, false)
    expect(output[2]).to eq item(input[1], false, false)
    expect(output[3]).to eq delimiter(false, false)
    expect(output[4]).to eq item(input[2], false, false)
    expect(output[5]).to eq delimiter(false, true)
    expect(output[6]).to eq item(input[3], false, true)
  end
end
