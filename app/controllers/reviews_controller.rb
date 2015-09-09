class ReviewsController < ApplicationController
  

  def index
    @reviews = Review.all
    render :index
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @review = Review.new
    render :new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @review = current_user.reviews.new(review_params)
      if @review.save 
        @artist.reviews << @review
        redirect_to artist_path(@artist)
      else
        redirect_to new_artist_review_path(@artist)
      end
  end

  def show
    @artist = Artist.find(params[:id])
    render :show
  end

  def edit
  end

  def update
  end

  def destory
  end

  private
    def review_params
      params.require(:review).permit(:text, :ratings)
    end

end
