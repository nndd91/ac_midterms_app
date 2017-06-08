class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

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
    @doctor.update(doctor_params)
    redirect_to doctor_path(@doctor)
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
    @doctor.destroy
    redirect_to doctors_path
  end

  def list_male
    @doctors = Doctor.where(gender: "Male")
  end

  def list_female
    @doctors = Doctor.where(gender: "Female")
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:last_name, :first_name, :address, :gender)
  end
end
