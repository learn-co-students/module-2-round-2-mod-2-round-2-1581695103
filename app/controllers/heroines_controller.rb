class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params["id"])
  end

  def new 
      @heroine = Heroine.new
  end

  def create 
    @heroine = Heroine.new
    @heroine.name = params['heroine']['name']
    @heroine.super_name = params['heroine']['super_name']
    @heroine.save
    redirect_to heroine_path(@heroine_params)
  end




  # private

  # # def heroine_params 
  # #   params.require(:heroine).permit(*args)
  # # end 
end
