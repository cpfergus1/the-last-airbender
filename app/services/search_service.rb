class SearchService

  def self.character_data_response(query)
    response = conn.get('/api/v1/characters/') do |req|
      req.params[:affiliation] = query
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new('https://last-airbender-api.herokuapp.com')
  end

end
