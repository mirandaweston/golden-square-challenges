require 'diary_entry'

RSpec.describe DiaryEntry do
    it "constructs" do
        diary_entry = DiaryEntry.new("day_1", "some contents")
    end

    it "returns the title" do
        diary_entry = DiaryEntry.new("day_1", "some contents")
        expect(diary_entry.title).to eq "day_1"
    end

    it "returns the contents" do
        diary_entry = DiaryEntry.new("day_1", "some contents")
        expect(diary_entry.contents).to eq "some contents"
    end
end