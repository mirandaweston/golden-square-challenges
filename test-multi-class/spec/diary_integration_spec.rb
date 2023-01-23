require 'diary'
require 'diary_entry'

RSpec.describe "Diary Integration" do
    it "adds entry and returns list of entries as an array" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("day_1", "some contents")
        entry_2 = DiaryEntry.new("day_2", "some more contents")
        diary.add(entry_1)
        diary.add(entry_2)
        expect(diary.all).to eq [entry_1, entry_2]
    end

    it "returns as an integer the number of words in all entries" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("day_1", "some contents")
        entry_2 = DiaryEntry.new("day_2", "some more contents")
        diary.add(entry_1)
        diary.add(entry_2)
        expect(diary.count_words).to eq 5
    end

    it "returns an integer representing the estimate reading time to read all entries" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("day_1", "some contents")
        entry_2 = DiaryEntry.new("day_2", "some more contents")
        diary.add(entry_1)
        diary.add(entry_2)
        expect(diary.reading_time(1)).to eq 20
    end

    it "returns the longest entry readable given the reading speed and time available" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("day_1", "some contents")
        entry_2 = DiaryEntry.new("day_2", "some more contents")
        entry_3 = DiaryEntry.new("day_3", "and some more contents")
        diary.add(entry_1)
        diary.add(entry_2)
        diary.add(entry_3)
        expect(diary.find_best_entry_for_reading_time(1, 5)).to eq entry_3
    end
end