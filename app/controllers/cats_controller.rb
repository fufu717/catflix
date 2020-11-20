class CatsController < ApplicationController

  def new
    @cat = Cat.new
  end

  def show
    cat = Cat.find(params[:id])
    @cat = Cat.find(params[:id])
    @movies = cat.movies
  end
  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :cat_type_id, :birth_day,:image).merge(user_id: current_user.id)
  end
end
