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

    it "returns the number of words in the contents as an integer" do
        diary_entry = DiaryEntry.new("day_1", "some contents")
        expect(diary_entry.count_words).to eq 2
    end

    it "returns an estimate of the reading time for the contents as an integer" do
        diary_entry = DiaryEntry.new("day_1", "some contents " * 10)
        expect(diary_entry.reading_time(1)).to eq 20
        expect(diary_entry.reading_time(10)).to eq 2
        expect(diary_entry.reading_time(200)).to eq 1
    end

    it "returns a string with a chunk of the contents the user could read in the given number of mins" do
        diary_entry = DiaryEntry.new("day_1", "Lorem Ipsum is simply dummy text of the printing and typesetting industry")
        expect(diary_entry.reading_chunk(2,2)).to eq "Lorem Ipsum is simply"
        expect(diary_entry.reading_chunk(2,2)).to eq "dummy text of the"
        expect(diary_entry.reading_chunk(2,2)).to eq "printing and typesetting industry"
        expect(diary_entry.reading_chunk(2,2)).to eq "Lorem Ipsum is simply"
    end
end