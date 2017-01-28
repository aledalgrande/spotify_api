class ArtistSerializer < ActiveModel::Serializer
  attributes :external_url, :genres, :href, :name, :spotify_id
end
