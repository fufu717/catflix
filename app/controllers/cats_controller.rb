class CatsController < ApplicationController
  def new
    @cats = Cat.new
  end

  def create
  end

end
