class CollectionsController < ApplicationController
  def index
    response = HTTP.get("https://api.collection.cooperhewitt.org/rest/?method=cooperhewitt.search.collection&access_token=#{Rails.application.credentials.api_key}&color=#{params[:color]}&page=1&per_page=100")
    render json: response.parse(:json)
  end
end
