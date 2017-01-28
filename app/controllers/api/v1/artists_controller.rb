class API::V1::ArtistsController < ApplicationController
  def index
    query = params[:query] || 'query'
    offset = params[:offset] || 0

    safe_render(response) do
      response = RestClient.get(Artist.search_url(query, offset))

      render json: ArtistBuilder.create_multiple_from_json_string(response.body)
    end
  end

  def show
    safe_render(response) do
      response = RestClient.get(Artist.get_url(params[:id]))

      artist = ArtistBuilder.create_single_from_json_string(response.body)
      artist.save

      render json: artist
    end
  end
end