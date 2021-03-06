class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find(params[:id])
    @movie = Movie.new
    @movies = @collection.movies
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)
    if @collection.save
      redirect_to collection_path(@collection)
    else
      render :new
    end
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :banner_url)
  end
end
