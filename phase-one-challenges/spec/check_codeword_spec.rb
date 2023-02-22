require 'check_codeword'

  RSpec.describe "check_codeword method" do
    it 'returns "Correct! Come in." when given "horse"' do
        expect(check_codeword('horse')).to eq "Correct! Come in."
    end
  end

  RSpec.describe "check_codeword method" do
    it 'returns "Close, but nope." when given "hearse"' do
        expect(check_codeword('hearse')).to eq "Close, but nope."
    end
  end

  RSpec.describe "check_codeword method" do
    it 'returns "WRONG!" when given "dog"' do
        expect(check_codeword('dog')). to eq "WRONG!"
    end
  end
