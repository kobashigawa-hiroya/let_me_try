class UsersController < ApplicationController
  
    def new
      @user = User.new
    end


  def index
    @users = User.includes(:user)
  end

  def create
    users.create!(user_params)
    redirect_to 
  end
private

def user_params
  params.require(:user).permit(:title, :content)

end
