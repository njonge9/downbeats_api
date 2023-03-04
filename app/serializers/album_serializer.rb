class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :album_type, :release_date, :spotify_url, :total_tracks, :image_url
end
