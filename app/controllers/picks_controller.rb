class PicksController < ApplicationController
  def new
    @seed = Seed.find(params[:seed_id])
  end

  def create
    @seed = Seed.find(params[:seed_id])
    @pick = @seed.picks.create(pick_params)
    redirect_to seed_path(@seed)
  end


  private

  def pick_params
    params.require(:pick).permit(:price)
  end
end
