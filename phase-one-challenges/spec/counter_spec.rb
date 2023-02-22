require 'counter'

RSpec.describe Counter do
    it "returns count" do
        test = Counter.new()
        test.add(5)
        answer = test.report
        expect(answer).to eq "Counted to 5 so far."
    end

    it "returns count" do
        test = Counter.new()
        test.add(1)
        answer = test.report
        expect(answer).to eq "Counted to 1 so far."
    end
end