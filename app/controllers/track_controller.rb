class TracksController < ApplicationController
    def index
      # Use RSpotify to search for tracks with the given query parameter
      tracks = RSpotify::Track.search(params[:query])
      
      # Use Active Model Serializers to serialize the track data
      render json: tracks, each_serializer: TrackSerializer
    end
    
    def show
      # Use RSpotify to retrieve the track with the given ID parameter
      track = RSpotify::Track.find(params[:id])
      
      # Use Active Model Serializers to serialize the track data
      render json: track, serializer: TrackSerializer
    end
    
    def create
      # Use RSpotify to create a new track with the given parameters
      track = RSpotify::Track.create(name: params[:name], artist: params[:artist], album: params[:album])
      
      # Use Active Model Serializers to serialize the created track data
      render json: track, serializer: TrackSerializer
    end
    
    def update
      # Use RSpotify to retrieve the track with the given ID parameter
      track = RSpotify::Track.find(params[:id])
      
      # Use RSpotify to update the track with the given parameters
      track.update(name: params[:name], artist: params[:artist], album: params[:album])
      
      # Use Active Model Serializers to serialize the updated track data
      render json: track, serializer: TrackSerializer
    end
    
    def destroy
      # Use RSpotify to retrieve the track with the given ID parameter
      track = RSpotify::Track.find(params[:id])
      
      # Use RSpotify to delete the track
      track.delete
      
      # Use Active Model Serializers to serialize the deleted track data
      render json: track, serializer: TrackSerializer
    end
end
  