require 'string_builder'

RSpec.describe StringBuilder do
    it "adds strings and returns string length" do
        words = StringBuilder.new
        words.add("Hello")
        result = words.size
        expect(result).to eq 5
    end

    it "adds strings and returns string length" do
        string = StringBuilder.new
        string.add("Ruby")
        result = string.size
        expect(result).to eq 4
    end

    it "adds strings and returns string length" do
        letters = StringBuilder.new
        letters.add("Good morning")
        result = letters.size
        expect(result).to eq 12
    end
end 