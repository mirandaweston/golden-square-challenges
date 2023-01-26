require 'diary'
require 'secret_diary'

RSpec.describe "integration" do
    it "constructs" do
        secret_diary = SecretDiary.new("diary")
        diary = Diary.new("contents")
    end

    describe "#read" do

        it "returns the diary's contents if the diary is unlocked" do
            secret_diary = SecretDiary.new("diary")
            diary = Diary.new("contents")
            secret_diary.unlock
            expect(secret_diary.read).to eq "diary"
        end

        it "raises the error 'Go away!' if the diary is locked" do
            secret_diary = SecretDiary.new("diary")
            diary = Diary.new("contents")
            secret_diary.lock
            expect(secret_diary.read).to eq "Go away!"
        end
    end
    
    describe "#lock" do
        it "returns true when diary is locked" do
            secret_diary = SecretDiary.new("diary")
            diary = Diary.new("diary")
            expect(secret_diary.lock).to eq true
        end
    end

    describe "#unlock" do
        it "returns false when diary is unlocked" do
            secret_diary = SecretDiary.new("diary")
            diary = Diary.new("diary")
            expect(secret_diary.unlock).to eq false
        end
    end
end
