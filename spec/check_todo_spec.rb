require 'check_todo'

RSpec.describe "check_todo method" do
    it "returns false if the text given is an empty string" do
        expect(check_todo("")).to eq false
    end
end