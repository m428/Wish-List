class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      login(user)
      # redirect_to user_path(user.id), notice: "Logged in!"
      redirect_to root_url
    else
      flash.now.alert = "Username or password not recognized"
      render "new"
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
