require 'greet'

  RSpec.describe "greet method" do
    it "greets user" do
      result = greet("Jack")
      expect(result).to eq "Hello, Jack!"
    end
  end