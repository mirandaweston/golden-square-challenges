require 'estimate_reading_time'

RSpec.describe "user enters text and method returns estimate reading time" do
    it "returns 0 when given text is empty" do
        reading_time = estimate_reading_time("")
        expect(reading_time).to eq 0
    end

    it "returns 1 when given text is 'one'" do
        reading_time = estimate_reading_time("one")
        expect(reading_time).to eq 1
    end
end