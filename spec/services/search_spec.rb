require 'rails_helper'
describe 'SearchService' do
  it 'can reture air bender characters' do
    response = SearchService.character_data_response('Fire Nation')
    expect(response).to be_an(Array)
    expect(response[0]).to be_a(Hash)

    expect(response[0][:allies]).to be_an(Array)
    expect(response[0][:enemies]).to be_an(Array)
    expect(response[0][:name]).to be_an(String)
    expect(response[0][:affiliation]).to be_an(String)
    expect(response[1][:photoUrl]).to be_an(String)
  end
end
