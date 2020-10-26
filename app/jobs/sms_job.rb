class SmsJob < ApplicationJob
  queue_as :default

  def perform(doctor)
    p 'hello from HelloWorldJob'

    ActionCable.server.broadcast(
        'bookings',
        bookings: doctor.bookings
    )
  end

end