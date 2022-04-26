class UsersController < ApplicationController
  def new
    @users = Users.new
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def create
    @users = Users.new(user_params)
    if @users.save
      flash[:notice] = "Welcome #{@users.username} to The Daycare , you have sucessfuly signed up."
      redirect_to kids_path
    else render 'new'
  end

  end
end