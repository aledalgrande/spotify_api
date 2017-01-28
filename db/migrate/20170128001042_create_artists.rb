class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :spotify_id
      t.string :external_url
      t.string :genres, array: true, default: []
      t.string :href
      t.string :name

      t.timestamps
    end
  end
end
