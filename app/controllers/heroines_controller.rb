class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new(name: params[:name], super_name: params[:super_name])
  end

  def create
    @heroine = Heroine.create(name: params[:name], super_name: params[:super_name])

    HeroinePower.create(heroine: @heroine, power: params[:power_ids])

    redirect_to heroine_path(params[:heroine][:power_ids])

    #need to check the :id to get to the correct show page
  end

end
