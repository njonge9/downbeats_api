class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :duration_ms
      t.string :spotify_url
      t.string :preview_url
      t.boolean :explicit

      t.timestamps
    end
  end
end
