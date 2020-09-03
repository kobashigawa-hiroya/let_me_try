class UsersController < ApplicationController
  def index
    @users = User.order(:id)
  end

  def new
    @user = User.new
  end

  def edit
  end

  def show
    @user = User.all
  end

  def create
    users.create!(user_params)
    redirect_to user
  end

  private

  def user_params
    params.require(:user).permit(:title, :content, :name)
  end
end
