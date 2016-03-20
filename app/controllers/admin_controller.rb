class AdminController < ApplicationController
  layout 'admin'

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def index


  end

  def login
    if session[:user_id]
      redirect_to(:controller=> 'admin',:action=>'index')
    else
      render('admin/login')
    end

  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = User.where(:username => params[:username]).where(:password => params[:password]).first
    end
    if found_user
      puts "user authorized"
      session[:user_id] = found_user.id
      session[:username] = found_user.username

      redirect_to(:controller=> 'admin',:action => 'index')
    else
      puts "user unauthorized"
      redirect_to(:controller=> 'admin',:action => 'login')
    end

  end

  def logout
    session[:user_id] = nil
    session[:username] = nil

    redirect_to(:controller=> 'admin',:action => 'login')

  end

end
