# frozen_string_literal: true

class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id]).current_user
    @user = User.find(params[:user_id])
  end

  def new
    @appointment = Appointment.new
    @user = User.find(params[:user_id])
  end

  def create
    @appointment = Appointment.new(appointments_params)
    @appointment.client_id = current_user.id
    @appointment.professional_id = User.find(params[:user_id]).id

    respond_to do |format|
      if @appointment.save!
        format.html { redirect_to user_appointment_path(User.find(params[:user_id]).id, current_user.id), notice: 'Event was successfully created.'}
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def appointments_params
    params.require(:appointment).permit(:description, :date, :user_id, :name)
  end
end
