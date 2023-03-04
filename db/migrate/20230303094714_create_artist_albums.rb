class CreateArtistAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :artist_albums do |t|
      t.integer :artist_id
      t.integer :album_id

      t.timestamps
    end
  end
end
