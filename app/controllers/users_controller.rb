class UsersController < ApplicationController

  include UsersHelper

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    @user = User.search(params[:search])
    if params[:search]
      @users = User.search(params[:search]).order("created_at DESC")
    else
      @users = User.all.order('created_at DESC')
    end
    render :index
  end

  def show
    @user = User.find(params[:id])
    @item = Item.new
    @item.user_id = @user.id
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
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
   redirect_to user_path(@user)
  end

  def destroy
  end

  private

  def set_user
   	 @user = User.find(params[:id])
  end
end
