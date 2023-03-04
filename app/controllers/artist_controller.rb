class ArtistController < ApplicationController
    def index
        artists = Rspotify::Artist.search(params[:q])
        render json: artists, each_serializer: ArtistSerializer
    end

    def show
        artist = Rspotify::Artist.find(params[:id])
        render json: artist, serializer: ArtistSerializer
    end
end
