class UserController < ApplicationController
  def index
    @users = User.all
  end



  def create
    @user = User.new(users_params)
    @user.password =
  end

  private
    def users_params
      params.require(:user).permit(:email, :username, :password)
    end
end
