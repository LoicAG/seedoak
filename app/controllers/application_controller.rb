class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  private

  def require_login
    unless logged_in?
      flash[:alert] = 'You must be logged in for this operation'
      redirect_to login_path
    end
  end
end
