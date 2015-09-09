class ArtistsController < ApplicationController
  def index
  	@artists = Artist.all
  	render :index
  end	

  # form to create new artist 
  def new
  end

  # create new artist
  def create
  end

  # show new current_artist 
  def show
  	@artist = Artist.find(params[:id])
  end
  
end
