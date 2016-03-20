class UsersController < ApplicationController
  layout false

  before_action :confirm_logged_in

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new({:username => "Default"})
  end

  def create
    @user = User.new(user_params)

    if @user.save

      UserMailer.welcome_email(@user).deliver_later

      redirect_to(:action => 'index')

    else
      render('new')
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to(:action => 'show',:id=>@user.id)
    else
      render('edit')
    end
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id]).destroy

    redirect_to(:action=>'index')
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :access_level)
  end
end
