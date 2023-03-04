class TrackSerializer < ActiveModel::Serializer
  attributes :id , :name, :duration_ms, :spotify_url, :preview_url, :explicit
end
