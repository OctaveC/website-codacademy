class MoviesController < ApplicationController
  def create
    @collection = Collection.find(params[:collection_id])
    @movie = Movie.new(movie_params)
    @movie.collection = @collection
    if @movie.save
      redirect_to collection_path(@collection)
    else
      render 'collections/show'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @collection = @movie.collection
    @movie.destroy
    redirect_to collection_path(@collection)
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :image_url)
  end
end
