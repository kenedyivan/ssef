class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def confirm_logged_in
    unless session[:user_id]
      puts "Please log in."
      redirect_to(:controller=> 'admin',:action => 'login')
      return false
    end
  end

end