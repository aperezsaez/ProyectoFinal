class UsersController < ApplicationController
  before_action :authenticate_user!, except: :index


  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit;end
  private

  def user_params
    params.require(:user).permit(:name, :photo, :email, :phone, :bio, :role)
  end
end
