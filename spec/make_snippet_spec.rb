require 'make_snippet'

RSpec.describe "takes a string and returns the first five words if string.length <= 5 or string + ellipses if string.length > 5" do
    it "returns the first five words if string.length <= 5 or string + ellipses if string.length . 5" do
        result = make_snippet("Hello world, how are you?")
        expect(result).to eq "Hello world, how are you?"
    end
end

RSpec.describe "takes a string as an argument and returns string + '...'" do
    it "returns the first five words plus '...'" do
        result = make_snippet("Good morning world, how are you?")
        expect(result).to eq "Good morning world, how are..."
    end
end