require 'GrammarStats'

describe GrammarStats do
    context "returns true when passed a string which is capitalized and ends with a sentence-ending punctuation mark" do
        it "is capitalized and ends with a question mark" do
            grammar_stats = GrammarStats.new
            result = grammar_stats.check("It is sunny today?")
            expect(result).to eq true
        end

        it "is capitalized and ends with a full stop" do
        grammar_stats = GrammarStats.new
            result = grammar_stats.check("It is sunny today.")
            expect(result).to eq true
        end

        it "is capitalized and ends with an exclamation mark" do
            grammar_stats = GrammarStats.new
            result = grammar_stats.check("It is sunny today!")
            expect(result).to eq true
        end
    end

    context "returns false when passed a string which is not capitalized and does not end with a sentence-ending punctuation mark" do
        it "is capitalized and does not end with a sentence-ending exclamation mark" do
            grammar_stats = GrammarStats.new
            result = grammar_stats.check("It is sunny today")
            expect(result).to eq false
        end
        
        it "begins with a lowercase letter" do
            grammar_stats = GrammarStats.new
            result = grammar_stats.check("it is sunny today!")
            expect(result).to eq false
        end

        it "is not capitalized and does not end with a sentence-ending exclamation mark" do
            grammar_stats = GrammarStats.new
            result = grammar_stats.check("it is sunny today")
            expect(result).to eq false
        end
    end
end