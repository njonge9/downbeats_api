class CreateTrackArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :track_artists do |t|
      t.integer :track_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
