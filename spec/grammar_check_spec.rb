require 'grammar_check'

RSpec.describe "user enters text and method returns boolean to show whether text is grammatically correct" do
  it "returns true if text ends with a '.' and is capitalized" do
    result = grammar_check("It is sunny today.")
    expect(result). to eq true
  end
end