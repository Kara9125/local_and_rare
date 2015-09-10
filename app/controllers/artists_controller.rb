class ArtistsController < ApplicationController
  def index
  	@artists = Artist.all
  	render :index
  end	

  # form to create new artist 
  def new
    @artist = Artist.create
  end

  # create new artist
  def create
    @artist = Artist.find(params[:artist_id])
      if @artist.save
        redirect_to artist_path(@artist)
      else
        redirect_to new_artist_review_path(@artist)
      end
  end

  # show new current_artist 
  def show
  	@artist = Artist.find(params[:id])
    @reviews = @artist.reviews
    # replace artist 
    @photos = Instagram.user_recent_media(@artist.instgram_id) 
  end
  
end
