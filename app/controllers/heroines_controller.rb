class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show 
    @heroine = Heroine.find(params[:id])
  end 

  def 
    @heroine = Heroine.new #keep getting error on (end of input) but it shows on the heroines/new
  end 

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to @heroine
    else
      render :show
    end

  end

  private
    
    def heroine_params
      params.require(:heroine).permit(:power_id)
    end

  end
end
