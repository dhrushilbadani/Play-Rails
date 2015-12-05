class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @u = User.create(user_params)
    @ip = request.remote_ip
    puts @ip
    @u.save!
    redirect_to new_user_session_path
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
