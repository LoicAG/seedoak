class SeedsController < ApplicationController
  def index
    @seeds = Seed.all
  end

  def show
    @seed = Seed.find(params[:id])
  end

  def new
    @seed = Seed.new
  end

  def create
    @seed = Seed.new(seed_params)

    if @seed.save
      redirect_to @seed
    else
      render 'new'
    end
  end

  private
    def seed_params
      params.require(:seed).permit(:name, :description)
    end
end
