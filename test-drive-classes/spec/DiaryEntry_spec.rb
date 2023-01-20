require 'DiaryEntry'

RSpec.describe DiaryEntry do
    it "constructs" do
        @diary_entry = DiaryEntry.new("title", "contents")
        expect(@diary_entry.title).to eq "title"
        expect(@diary_entry.contents).to eq "contents"
    end

    it "returns the number of words in the contents as an integer" do
        @diary_entry = DiaryEntry.new("title", "contents")
        expect(@diary_entry.count_words).to eq 1
    end
end