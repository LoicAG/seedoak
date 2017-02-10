class PicksController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]

  def new
    @seed = Seed.find(params[:seed_id])
  end

  def create
    @seed = Seed.find(params[:seed_id])
    @pick = @seed.picks.new(pick_params)
    @pick.user_id = current_user.id
    @pick.save
    redirect_to seed_path(@seed)
  end


  private

  def pick_params
    params.require(:pick).permit(:price)
  end
end
