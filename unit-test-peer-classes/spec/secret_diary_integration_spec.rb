require 'secret_diary'
require 'diary'

RSpec.describe "secret diary integration" do
  it "raises an error if the diary is locked" do
    diary = Diary.new("some contents")
    secret_diary = SecretDiary.new(diary)
    expect {secret_diary.read}.to raise_error "Go away!"
  end 

  it "returns the diary contents if the diary is unlocked" do
    diary = Diary.new("some contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "some contents"
  end
  
  it "raises an error 'Go away!' when the unlocked diary is locked again" do
    diary = Diary.new("some contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect {secret_diary.read}.to raise_error "Go away!"
  end
end