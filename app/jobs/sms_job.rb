class SmsJob < ApplicationJob
  queue_as :default

  def perform(booking)

  	response = "YES"
  	# If response of Sms is YES
  	if(response == "YES")
			SmsResponseJob.set(wait: 1.seconds).perform_later(booking)
		end
  end
end