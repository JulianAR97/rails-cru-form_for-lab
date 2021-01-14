class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update]
  def index
    @songs = Song.all
  end

  def show
 
  end

  def new
    @song = Song.new
    render :edit
  end

  def create
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def edit

  end

  def update
    @song = Song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  private
  
    def song_params(*args)
      params.require(:song).permit(*args)
    end

    def find_song
      @song = Song.find(params[:id])
    end
end
