class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def new
    @power = Power.new(power_params)
  end
  
  def create
    @power = Power.new(power_params)
    @power.save
  end


    private

    def power_params
      params.reqire(:power).permit(:name, :description)
    end

end
