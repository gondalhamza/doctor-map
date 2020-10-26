class DashboardController < ApplicationController
	before_action :set_doctor, only: [:index]
	before_action :markers_hash, only: [:index]

  def index
  	@bookings=@doctor.bookings

  	ActionCable.server.broadcast(
        'bookings',
        bookings: @bookings
    )

    # binding.pry
    respond_to do |format|
      format.html
      format.json {render json: @users}
    end
  end

  def time_request
		SmsJob.set(wait: 1.seconds).perform_later(Doctor.second)
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
