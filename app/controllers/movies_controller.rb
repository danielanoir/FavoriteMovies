class MoviesController < ApplicationController

def index
end

def show
end

def new
end

def create
  @genre = Genre.find(params[:genre_id])
  @movie = @genre.movies.create!(movie_params)
  redirect_to genre_path(@genre)
end

def edit
end

def update
end

def upvote
  @movie = Movie.find(params[:id])
  @genre = @movie.genre
  @movie.upvote_by current_user
  redirect_to genre_path(@genre)
end

def downvote
  @movie = Movie.find(params[:id])
  @genre = @movie.genre
  @movie.downvote_by current_user
  redirect_to genre_path(@genre)
end

def unvote
  @movie = Movie.find(params[:id])
  @genre = @movie.genre
  @movie.unvote_by current_user
  redirect_to genre_path(@genre)
end

def destroy
  @genre = Genre.find(params[:genre_id])
  @movie = @genre.movies.find(params[:id])
  @movie.destroy
  redirect_to genre_path(@genre)
end

private
  def movie_params
    params.require(:movie).permit(:title, :review, :photo_url)
  end
end
