class KidsController < ApplicationController
  def index
    @kids = Kids.all 
  end

  def show
    @kids = Kid.find(params[:id])
  end

  def new
    @kids = Kid.new
  end

  def create
    @kids = Kids.new(params.require(:kids).permit(:name, :age, :description))
  if @kids.save
    flash[:notice] = "Kid was created successfully"
    redirect_to @kids
  else 
    render 'new'
  end
end
