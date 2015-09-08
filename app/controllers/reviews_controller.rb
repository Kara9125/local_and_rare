class ReviewsController < ApplicationController
  

  def index
    @reviews = Review.all
    render :index
  end

  def new
    @review = Review.new
    render :new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destory
  end
end
