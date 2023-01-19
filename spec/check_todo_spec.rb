require 'check_todo'

RSpec.describe "check_todo method" do
    it "returns false if the text given is an empty array" do
        expect(check_todo("")).to eq false
    end

    it "returns true if the text give includes '#TODO'" do
        expect(check_todo("#TODO write code")).to eq true
    end
end