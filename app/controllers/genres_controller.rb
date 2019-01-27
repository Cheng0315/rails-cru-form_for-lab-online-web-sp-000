class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def show
    @genre = Artist.find(params[:id])
  end

  def edit
    @genre = Artist.find(params[:id])
  end

  def create
    @genre = Artist.new(post_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Artist.find(params[:id])
    @genre.update(post_params(:name))
    redirect_to genre_path(@genre)
  end

  private

  def post_params(*args)
    params.require(:artist).permit(*args)
  end
end
