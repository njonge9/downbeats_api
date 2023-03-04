class AlbumController < ApplicationController
    before_action :set_album, only: [:show, :update, :destroy]

    def index
      @albums = RSpotify::Album.search(params[:q])
      render json: @albums, each_serializer: AlbumSerializer
    end
  
    def show
      render json: @album, serializer: AlbumSerializer
    end
  
    def create
      @album = Album.new(album_params)
  
      if @album.save
        render json: @album, serializer: AlbumSerializer, status: :created
      else
        render json: @album.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @album.update(album_params)
        render json: @album, serializer: AlbumSerializer
      else
        render json: @album.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @album.destroy
      head :no_content
    end
  
    private
  
    def set_album
      @album = RSpotify::Album.find(params[:id])
    end
  
    def album_params
      params.require(:album).permit(:name, :artist, :year)
    end
end
