class SearchController < ApplicationController

  def index
    @query = params[:nation].split('_').map(&:capitalize).join(' ')
    @characters = SearchFacade.characters(@query)
  end

end
