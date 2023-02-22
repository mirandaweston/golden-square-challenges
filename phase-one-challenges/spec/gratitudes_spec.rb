require 'gratitudes'

RSpec.describe Gratitudes do
    it "adds list of gratitudes to an array and returns as a string" do
        gratitude = Gratitudes.new
        gratitude.add("friends")
        output = gratitude.format
        expect(output).to eq "Be grateful for: friends"
    end

    it "adds list of gratitudes to an array and returns as a string" do
        gratitude_list = Gratitudes.new
        gratitude_list.add("animals")
        output = gratitude_list.format
        expect(output).to eq "Be grateful for: animals"
    end
end