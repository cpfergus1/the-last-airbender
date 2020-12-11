require 'rails_helper'
describe 'Seach Facade' do
  it 'returns characters' do
    characters = SearchFacade.characters('Fire Nation')
    expect(characters).to be_an(Array)
    expect(characters.size).to eq(20)
    expect(characters.first).to be_an_instance_of(Character)
  end
end
