class SeedsController < ApplicationController
  def new
  end

  def create
    @seed = Seed.new(seed_params)

    @seed.save
    redirect_to @seed
  end

  def show
    @seed = Seed.find(params[:id])
  end

  private
    def seed_params
      params.require(:seed).permit(:name, :description)
    end
end
