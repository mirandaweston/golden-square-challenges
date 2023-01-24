require 'diary'

RSpec.describe Diary do
    it "constructs" do
        diary = Diary.new
    end

    it "returns an empty list of entries as an array" do
        diary = Diary.new
        expect(diary.all).to eq []
    end
end