class SmsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    p 'hello from HelloWorldJob'

    ActionCable.server.broadcast(
        'bookings',
        location: "Job Location"
    )
  end

end