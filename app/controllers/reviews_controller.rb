class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render :index
  end

  def new
    # CJ: since the `Artist.find` logic is repeated in multiple controller actions,
    # it's a good candidate to move into a private method to DRY up your code
    @artist = Artist.find(params[:artist_id])
    @review = Review.new
    render :new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @review = current_user.reviews.new(review_params)
    if current_user  
      if @review.save 
        @artist.reviews << @review
        redirect_to artist_path(@artist)
      else
        redirect_to new_artist_review_path(@artist)
      end
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
