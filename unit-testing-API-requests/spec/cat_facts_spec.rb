require 'cat_facts'

describe CatFacts do
  it 'calls an API and returns a cat fact' do
    requester = double :requester
    expect(requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"Cats can be right-pawed or left-pawed.","length":38}')

    cat_fact = CatFacts.new(requester)
    result = cat_fact.provide
    expect(result).to eq 'Cat fact: Cats can be right-pawed or left-pawed.'
  end
end