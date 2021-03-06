class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @User.save
      # 保存成功の場合ここで扱う。
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email)
    end
end
