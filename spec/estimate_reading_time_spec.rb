require 'estimate_reading_time'

RSpec.describe "user enters text and method returns estimate reading time" do
  it "returns 0 when given text is empty" do
    reading_time = estimate_reading_time("")
    expect(reading_time).to eq 0
  end
  
  it "returns 1 when given text is 'one'" do
    reading_time = estimate_reading_time("one")
    expect(reading_time).to eq 1
  end
  
  it "returns 1 when given text is 200 words" do
    reading_time = estimate_reading_time( "one " * 200)
    expect(reading_time).to eq 1
  end

  it "returns 3 when given text is 600 words" do
    reading_time = estimate_reading_time( "one " * 600)
    expect(reading_time).to eq 3
  end

  it "returns 3 when given text is 650 words" do
    reading_time = estimate_reading_time( "one " * 650)
    expect(reading_time).to eq 3
  end

  it "returns 5 when given text is 1000 words" do
    reading_time = estimate_reading_time( "one " * 1000)
    expect(reading_time).to eq 5
  end

end