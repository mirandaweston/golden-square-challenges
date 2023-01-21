require 'make_snippet'

RSpec.describe "make_snippet method" do
    it "returns the first five words" do
        result = make_snippet("Hello world, how are you?")
        expect(result).to eq "Hello world, how are you?"
    end
end

RSpec.describe "make_snippet method" do
    it "takes a string as an argument and returns the first five words + '...'" do
        result = make_snippet("Good morning world, how are you?")
        expect(result).to eq "Good morning world, how are..."
    end
end