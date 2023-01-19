require 'grammar_check'

RSpec.describe "grammar_check method" do
  it "returns true if text ends with an '.' and is capitalized" do
    result = grammar_check("It is sunny today.")
    expect(result). to eq true
  end

  it "returns true if text ends with an '?' and is capitalized" do
    result = grammar_check("It's sunny today?")
    expect(result). to eq true
  end

  it "returns false if text ends with an '.' and is not capitalized" do
    result = grammar_check("it's sunny today.")
    expect(result). to eq false
  end

  it "returns false if text does not end with punctuation mark and is capitalized" do
    result = grammar_check("It's sunny today")
    expect(result). to eq false
  end

  it "returns true if text ends with '!' and is capitalized" do
    result = grammar_check("It's sunny today!")
    expect(result). to eq true
  end
end