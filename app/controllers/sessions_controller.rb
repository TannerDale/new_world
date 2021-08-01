class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:alert] = "Welcome #{user.username.capitalize}!"
      redirect_to '/'
    else
      flash[:error] = "Sorry, invalid username or password."
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end
end
