require 'rails_helper'
describe 'characters' do
  it 'has attributes' do

      params ={ id: "5cf5679a915ecad153ab6906",
        allies: ["Ty Lee"],
        enemies: ["Appa"],
        photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
        name: "Circus master",
        affiliation: "Fire Nation circus"
      }
      character = Character.new(params)
      expect(character.name).to eq('Circus master')
      expect(character.allies).to eq(['Ty Lee'])
      expect(character.enemies).to eq(['Appa'])
      expect(character.affiliation).to eq('Fire Nation circus')
      expect(character.photo_link).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
  end
end
