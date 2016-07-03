class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash.notice = "#{@user.name} has been destroyed."
    redirect_to '/'
  end

  def show
    @user = User.find(params[:id])
    @detail = @user.actor_detail
  end

  def profile
    @user = User.find(session[:user_id])
    @detail = @user.actor_detail
  end

  def edit
    @user = User.find(params[:id])
    @detail = @user.actor_detail
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :account_type)
  end
end
