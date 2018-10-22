class UsersController < ApplicationController
  before_action :authenticate_user!, except: :index


  def index
    @user = User.where(role: 2).last(3)
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :photo, :email, :phone, :bio, :role)
  end
end
