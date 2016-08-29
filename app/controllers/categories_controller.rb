class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @new_category = Category.new

  end

  def create
    @new_category = Category.create(category_params)
    if @new_category.save
      redirect_to action: :index
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.assign_attributes(category_params)
    if @category.save
      redirect_to @category
    else
  # flash[:error] = "Error saving topic. Please try again."
   render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])

   if @category.destroy
     #flash[:notice] = "\"#{@topic.name}\" was deleted sucessfully."
     redirect_to action: :index
   else
     #flash[:error] = "There was an error deleting the topic."
     render :show
   end
 end




  private
  def category_params
    params.require(:category).permit(:body)
  end
end
