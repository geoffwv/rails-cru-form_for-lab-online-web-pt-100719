class GenresController < ApplicationController
  def index
    @genre = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.new
    @genre.update(genre_params)
    @genre.save

    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.new
    @genre.update(genre_params)
    @genre.save

    redirect_to genre_path(@genre)
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
