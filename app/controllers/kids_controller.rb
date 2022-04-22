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

  def edit
    @kids = Kids.find(params[:id])
  end 

  def update
     @kids =Kids.find(params[:id])

    if @kids.update(params.require(:book).permit(:name, :age, :description))
      flash[:message] = "Update successfull"
      redirect_to @kids
    else
      render 'edit'
  end

  def distroy
    @kids = Kids.find(params[:id])
      flash[:message] = "#{@kids.name} was successfully deleted"
    @kids.distroy
      redirect_to kids_path
  end
end
