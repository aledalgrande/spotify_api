class Artist < ApplicationRecord
  BASE_URL = 'https://api.spotify.com/v1'

  def self.get_url(id)
    "#{BASE_URL}/artists/#{id}"
  end

  def self.search_url(query, offset)
    parameters = {
      limit: 50,
      offset: offset,
      query: query,
      type: 'artist'
    }

    "#{BASE_URL}/search?#{parameters.to_param}"
  end

  validates :spotify_id, uniqueness: true
end
