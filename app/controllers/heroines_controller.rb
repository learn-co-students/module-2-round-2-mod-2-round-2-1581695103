class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def create
    @heroine = Heroine.new(heroine_params)
     if @heroine.valid?
        @heroine.save
      @id = params[:heroine][:powers].to_i
      HeroinePower.create(power_id: @id, heroine_id: @heroine.id)
    redirect_to @heroine
    else
      render :new
    end
  end

  



    private

    def heroine_params
      params.require(:heroine).permit(:name, :super_name, :power_id)
    end

end
