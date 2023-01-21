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

    context "returns as an integer the percentage of texts checked so far that have passed the check defined in the 'check' method" do
        #the number 55 represents 55%
        it "returns 50 if 50% of texts checked so far are capitalized and end with a sentence-ending punctuation mark" do
            grammar_stats = GrammarStats.new
            grammar_stats.check("It is sunny today.")
            grammar_stats.check("it is sunny today")
            result = grammar_stats.percentage_good
            expect(result).to eq 50
        end

        it "returns 75 if 75% of texts checked so far are capitalized and end with a sentence-ending punctuation mark" do
            grammar_stats = GrammarStats.new
            grammar_stats.check("it is sunny today!")
            grammar_stats.check("It is sunny today!!")
            grammar_stats.check("It is sunny today?")
            grammar_stats.check("It is sunny today.")
            result = grammar_stats.percentage_good
            expect(result).to eq 75
        end
    end
end