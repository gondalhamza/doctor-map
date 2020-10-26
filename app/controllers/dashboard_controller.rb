require 'services/booking_service'

class DashboardController < ApplicationController
	include BookingService

	before_action :set_doctor, only: [:index]

	def index
		@bookings = BookingService.arrange(@doctor.bookings)

		ActionCable.server.broadcast(
			'bookings',
			bookings: @bookings
		)

		respond_to do |format|
			format.html
			format.json {render json: @bookings}
		end
	end

	def time_request
	# Change time for a booking let say first booking of doctor
		SmsJob.set(wait: 1.seconds).perform_later(Doctor.first.bookings.first)
	end

	private
	def set_doctor
 		@doctor=Doctor.first
	end  
	def set_booking
		@booking=Booking.find_by_id parmas[:id]
	end
end
