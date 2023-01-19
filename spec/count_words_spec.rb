require 'count_words'

RSpec.describe "count_words method" do
    it "returns the number of words in a string" do
        words = count_words("I love my dog")
        expect(words).to eq 4
    end

    it "returns 0 if string is empty" do
        words = count_words("")
        expect(words).to eq 0
    end
end