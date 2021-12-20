class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to root_path
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :password)
  end
end