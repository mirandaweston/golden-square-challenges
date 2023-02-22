require 'report_length'

  RSpec.describe "report_length method" do
    it 'returns "This string was 11 characters long." when given "Hello World"' do
        expect(report_length("Hello World")).to eq "This string was 11 characters long."
    end
  end

  RSpec.describe "check report_length method" do
    it 'returs "This string was 5 characters long." when given "Hello"' do
      expect(report_length("Hello")).to eq "This string was 5 characters long."
    end
  end
