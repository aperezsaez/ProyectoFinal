# frozen_string_literal: true

class AppointmentsController < ApplicationController
  attr_accessor
  def index
    if current_user.role == 'Profesional'
      @appointments = Appointment.all.where(professional_id: current_user.id)
    elsif current_user.role == 'Cliente'
      @appointments = Appointment.all.where(client_id: current_user.id)
    end

  end

  def show
    @appointment = Appointment.find(params[:id])
    @professional = User.find(params[:user_id])
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
      if @appointment.save
        format.html { redirect_to user_appointment_path(params[:user_id], @appointment.id), notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @appointment.update(appointments_params)
        format.html { redirect_to @appointment, notice: 'Event was successfully updated.'}
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @appointments = Appointment.find(params[:id])
    @appointments.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def appointments_params
    params.require(:appointment).permit(:description, :date, :user_id, :name)
  end
end
