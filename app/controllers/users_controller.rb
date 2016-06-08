class UsersController < ApplicationController

  include UsersHelper

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find(params[:id])
    @item = Item.new
    @item.user_id = @user.id

    @birthday = countdown
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def set_user
   	 @user = User.find(params[:id])
  end
end
