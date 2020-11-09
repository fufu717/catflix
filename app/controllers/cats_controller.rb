class CatsController < ApplicationController

  def new
    @cats = Cat.new
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
    params.require(:cats).permit(:name, :cat_type_id, :birth_day,:image).merge(user_id: current_user.id)
  end
end
