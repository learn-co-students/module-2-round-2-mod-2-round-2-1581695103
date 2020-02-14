class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def edit 
    @power = Power.find(params[:id])
  end
  def update
    @power = Power.find(params[:id])
    @power.update(name: params[:power][:name], description: params[:power][:description])
    redirect_to power_path(@power)
   end
   

end
