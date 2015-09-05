class UsersController < ApplicationController
  
  # form to create new user
  def new
  	@user = User.new
  	render :new
  end

  # creates new user in db
  def create

  end

  # show current_user
  def show
  end

  private
  	def user_params
  		params.require(:user).permit(:first_name, :last_name, :email, :password)
  	end

end
