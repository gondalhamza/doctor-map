require 'services/booking_service'

class SmsResponseJob < ApplicationJob
	include BookingService
  queue_as :default

  def perform(booking)

  	Booking.update(begins_at: Time.zone.today + 10.hours)

		new_list = BookingService.arrange(booking.doctor.bookings)

	  ActionCable.server.broadcast(
	      'bookings',
	      bookings: new_list
	  )
  end
end