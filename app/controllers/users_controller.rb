class UsersController < ApplicationController

  def show
    @user = User.show(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :email, :password))
    if @user.save
      flash[:notice] = "Welcome #{@user.username} to The Daycare , you have sucessfuly signed up."
      redirect_to @user
    else render 'new'
  end

  end
end