class GenresController < ApplicationController
  before_action :find_genre, only: [:show, :edit, :update]
  
  def index
    @genres = Genre.all
  end

  def show
    
  end

  def new
    @genre = Genre.new
    render :edit
  end

  def create
    @genre = Genre.create(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def edit
    
  end

  def update
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  private

    def genre_params(*args)
      params.require(:genre).permit(*args)
    end

    def find_genre
      @genre = Genre.find(params[:id])
    end
end
