class UsersController < ApplicationController
  def new
  end

  def create
    new_user = User.create(user_params)
    new_user.save
    session[:user_id] = new_user.id
    redirect_to '/'
  end

  def show
    @user = User.find(session[:user_id])
  end

  private

  def user_params
    params.permit(:username, :password, :faction_id)
  end
end
