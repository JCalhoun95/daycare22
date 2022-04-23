class KidsController < ApplicationController
  def index
    @kids = Kid.all 
  end

  def show
    @kid = Kid.find(params[:id])
  end

  def new
    @kid = Kid.new
  end

  def create
    @kid = Kid.new(params.require(:kid).permit(:name, :age, :description))
      if @kid.save
        flash[:notice] = "Kid was created successfully"
        redirect_to @kid
      else 
        render 'new'
      end
  end

  def edit
    @kid = Kid.find(params[:id])
  end 

  def update
     @kid =Kid.find(params[:id])

    if @kid.update(params.require(:kid).permit(:name, :age, :description))
      flash[:message] = "Update successfull"
      redirect_to @kid
    else
      render 'edit'
    end
  end

  def destroy
    @kid = Kid.find(params[:id])
      flash[:message] = "#{@kid.name} was successfully deleted"
    @kid.destroy
      redirect_to kids_path
  end
end