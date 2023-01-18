require 'count_words'

RSpec.describe "takes a string as an argument and returns the number of words in string" do
    it "returns the number of words in a string" do
        words = count_words("I love my dog")
        expect(words).to eq 4
    end
end