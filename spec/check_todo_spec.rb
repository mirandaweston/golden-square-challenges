require 'check_todo'

RSpec.describe "check_todo method" do
    it "returns false if the text given is an empty string" do
        expect(check_todo("")).to eq false
    end

    it "returns true if the text given includes '#TODO'" do
        expect(check_todo("#TODO write code")).to eq true
    end

    it "returns true if the text given includes '#TODO'" do
        expect(check_todo("food shop #TODO")).to eq true
    end

    it "returns true if the text given includes '#TODO'" do
        expect(check_todo("buy dog food #TODO feed dog")).to eq true
    end

    it "returns false if the text given does not include '#TODO'" do
        expect(check_todo("it is raining")).to eq false
    end
end