class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit]
  before_action :authenticate_user!

  def new
    @doctor = Doctor.new
  end

  def show

  end

  def index
    @doctors = Doctor.all
  end

  def edit
  end

  def update
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctor_path(@doctor)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:last_name, :first_name, :address, :gender)
  end
end
