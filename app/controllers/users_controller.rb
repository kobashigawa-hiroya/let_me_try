class UsersController < ApplicationController
  def index
    @user = ["先生a", "先生b", "先生c", "先生d", "先生e", "先生f", "先生g", "先生h"]
    @content = ["風呂掃除", "選択", "トイレ掃除", "掃除機", "休み", "庭掃除", "夕飯", "朝食", "昼食"]
  end

  def new
  end

  def create
  end
end
