require 'secret_diary'

RSpec.describe SecretDiary do
  it "raises an error when the diary is locked" do
    fake_diary = double(:fake_diary, read:"some contents")
    secret_diary = SecretDiary.new(fake_diary)
    expect {secret_diary.read}.to raise_error "Go away!"
  end

  it "returns the diary contents when the diary is unlocked" do
    fake_diary = double(:fake_diary, read:"some contents")
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "some contents"
  end

  it "raises an error 'Go away!' when the unlocked diary is locked again" do
    fake_diary = double(:fake_diary, read:"some contents")
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.unlock
    secret_diary.lock
    expect {secret_diary.read}.to raise_error "Go away!"
  end
end