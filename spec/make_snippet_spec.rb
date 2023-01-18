require 'make_snippet'

RSpec.describe "takes a string as an argument and returns the first five words" do
    it "returns the first five words" do
        result = make_snippet("Hello world, how are you?")
        expect(result).to eq "Hello world, how are you?"
    end
end