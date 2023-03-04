class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :spotify_id
      t.string :spotify_url
      t.string :image_url
      t.integer :popularity

      t.timestamps
    end
  end
end
