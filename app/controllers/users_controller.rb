class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.actor_detail = ActorDetail.new(details_params)
    # byebug
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      # byebug
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash.notice = "#{@user.name}'s account has been deleted."
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
    params.require(:user).permit(:first_name, :last_name, :email, :password, :account_type, :phone, :account_type, union_ids: [], identity_ids: [], gender_ids: [])
  end

  def details_params
    params.require(:detail).permit(:representation, :website, :location, :age_min, :age_max, :pronouns, :height, :weight, :vocal_range, :dance_styles, :instrument, :disability, :bio, :dance_styles, :headshot, :resume, :classical, :singer, voice_type_ids: [], dance_type_ids: [], religion_ids: [])
  end
end
