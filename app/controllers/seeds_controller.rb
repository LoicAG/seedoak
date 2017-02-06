class SeedsController < ApplicationController
  def new
  end

  def create
    render plain: params[:seed].inspect
  end
end
