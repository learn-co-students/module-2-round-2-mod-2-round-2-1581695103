class HeroinesController < ApplicationController
  
  
  def index
    @heroines = Heroine.all
  end

  def show 
    @heroine = Heroine.find(params[:id])
    @hp = Heroinepower.find_by(heroine_id: @heroine.id)
    @power = Power.find_by(id: @hp.power_id)
  end

  def new 
    @heroine = Heroine.new
  end

  def create 
    #byebug
    @heroine = Heroine.new(heroine_params)
    if @heroine.save 
      @hp = Heroinepower.create(power_id: params[:heroine][:power_id], heroine_id: @heroine.id)
      
      redirect_to heroine_path(@heroine)
    else
      render :new

    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name,:super_name, :power_ids)
  end

end
