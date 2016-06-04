class ItemsController < ApplicationController
  def index
  end

  def show
    @user = current_user
    @item = Item.find(params[:id])

  end

  def new
    @user = current_user
    @item = Item.new
  end

  def create
    @user = current_user # give access to all the things
    @item = Item.new(item_params)
    @item.user_id = params[:user_id] # set user_id param from database relationship to current_user id
    @item.save
    redirect_to user_item_path(@user, @item) #goes to items show page http://localhost:3000/users/1/items/24
  end

  def edit
    @user = current_user
    @item = Item.find(params[:id])
  end

  def update
   @user = current_user
   @item = Item.find(params[:id])
   @item.update(item_params)
  redirect_to user_path(@user)
  end

  def destroy
    @user = User.find params[:user_id]
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to user_path(@user)
  end

  def item_params
  params.require(:item).permit(:title, :category, :cost, :seller, :note, :user_id)
end

private
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :birthday, :city, :state, :email, :password, :password_confirmation)
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_login_url # halts request cycle
    end
  end
end
