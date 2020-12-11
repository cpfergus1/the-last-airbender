class Character

  attr_reader :id,
              :name,
              :allies,
              :enemies,
              :affiliation,
              :photo_link

  def initialize(params)
    @id = params[:id]
    @name = params[:name]
    @allies = params[:allies]
    @enemies = params[:enemies]
    @affiliation = params[:affiliation]
    @photo_link = params[:photoUrl]
  end

end
