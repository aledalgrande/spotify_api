class ArtistBuilder
  def self.create_multiple_from_json_string(json_string)
    artists = JSON.parse(json_string)['artists']['items']
    
    artists.map do |attributes|
      create_model(attributes)
    end
  end

  def self.create_single_from_json_string(json_string)
    attributes = JSON.parse(json_string)
    create_model(attributes)
  end

  private

  def self.create_model(attributes)
    Artist.new(
      external_url: attributes.dig('external_urls', 'spotify'),
      href: attributes['href'],
      genres: attributes['genres'],
      name: attributes['name'],
      spotify_id: attributes['id']
    )
  end
end