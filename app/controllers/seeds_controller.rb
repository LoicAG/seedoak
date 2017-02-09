class SeedsController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
  def index
    @seeds = Seed.all
  end

  def show
    @seed = Seed.find(params[:id])
  end

  def new
    @seed = Seed.new
  end

  def edit
    @seed = Seed.find(params[:id])
  end

  def create
    @seed = Seed.new(seed_params)

    if @seed.save
      redirect_to @seed
    else
      render 'new'
    end
  end

  def update
    @seed = Seed.find(params[:id])

    if @seed.update(seed_params)
      redirect_to @seed
    else
      render 'edit'
    end
  end

  def destroy
    @seed = Seed.find(params[:id])
    @seed.destroy

    redirect_to seeds_path
  end

  private
    def seed_params
      params.require(:seed).permit(:name, :description)
    end
end
