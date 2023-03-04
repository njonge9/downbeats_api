class Track < ApplicationRecord
    def self.new_from_spotify_track(spotify_track)
        Track.new(
            spotify_id: spotify_track.id,
            name: spotify_track.name,
            duration_ms: spotify_track.duration_ms,
            spotify_url: spotify_track.spotify_url.spotify_url,
            image_url: spotify_track.image_url,
            popularity: spotify_track.popularity
        )
    end

    def self.create_from_spotify_track(spotify_track)
        track = 
    self.new_from_spotify_track(spotify_track)
        track.save
        track
    end
end
