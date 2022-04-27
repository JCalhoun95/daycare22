class UsersController < ApplicationController

  def show
    @user = User.show
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def new
    @User = Users.new
  end

  def create
    @users = Users.new(params.require(:user).permit(:username, :email, :password))
    if @user.save
      flash[:notice] = "Welcome #{@users.username} to The Daycare , you have sucessfuly signed up."
      redirect_to user_path
    else render 'new'
  end

  end
end