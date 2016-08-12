class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.new(genre_params)

    @genre.save
    redirect_to @genre
  end

  private
    def genre_params
      params.require(:genre).permit(:category)
    end
  end
