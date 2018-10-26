class UsersController < ApplicationController
  before_action :authenticate_user!, except: :index


  def index
    @users = User.all
    @appointment = Appointment.find(params[:id], params[:user_id])
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :photo, :email, :phone, :bio, :role)
  end
end
