require 'diary'

RSpec.describe Diary do
    it "constructs" do
        diary = Diary.new("contents")
    end

    it "returns the contents of the diary as a string" do
        diary = Diary.new("contents")
        expect(diary.read).to eq "contents"
    end
end