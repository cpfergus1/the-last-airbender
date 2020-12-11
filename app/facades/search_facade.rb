class SearchFacade

  def self.characters(query)
    SearchService.character_data_response(query).map do |character_data|
        Character.new(character_data)
    end
  end

end
