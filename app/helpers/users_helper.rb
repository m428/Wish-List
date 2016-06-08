module UsersHelper
  def user_params
     params.require(:user).permit(:first_name, :last_name, :username, :birthday, :city, :state, :email, :password, :password_confirmation)
  end

    def countdown
      dob = @user.birthday
      now = Time.now.utc.to_date
      now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end

end
