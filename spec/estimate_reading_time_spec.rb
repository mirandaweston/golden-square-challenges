require 'estimate_reading_time'

RSpec.describe "user enters text and method returns estimate reading time" do
    it "returns estimate reading time of given text" do
        reading_time = estimate_reading_time("")
        expect(reading_time).to eq 0
    end
end