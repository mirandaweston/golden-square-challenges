require 'present'

describe Present do
  context "No content has been wrapped" do
    it "fails" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

  context "Content has been wrapped" do
    it "fails" do
      present = Present.new
      present.wrap("gift")
      expect { present.wrap("ipad")}.to raise_error "A contents has already been wrapped."
    end

    it "wraps and unwraps content" do
      present = Present.new
      present.wrap("gift")
      expect(present.unwrap).to eq "gift"
    end
  end
end