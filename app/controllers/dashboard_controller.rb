class DashboardController < ApplicationController
  def index
  	@doctor=Doctor.first
  	@users=User.where(doctor: @doctor)
  	@bookings=Booking.where(doctor: @doctor)
  end
end
