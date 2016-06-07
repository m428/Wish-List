module UsersHelper
  def user_params
     params.require(:user).permit(:first_name, :last_name, :username, :birthday, :city, :state, :email, :password, :password_confirmation)
  end
end
