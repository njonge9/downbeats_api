class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :album_type
      t.date :release_date
      t.string :spotify_url
      t.integer :total_tracks
      t.string :image_url

      t.timestamps
    end
  end
end
