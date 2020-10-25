class DashboardController < ApplicationController
	before_action :set_doctor, only: [:index]
	before_action :markers_hash, only: [:index]

  def index
  	@bookings=@doctor.bookings

  	respond_to do |format|
      format.html
      format.json {render json: @users}
    end
  end

  private
  def set_doctor
  	@doctor=Doctor.first
  end

  def markers_hash
  	@users=User.where(doctor: @doctor)
    { page: 1, count: 200 }
  end
end
