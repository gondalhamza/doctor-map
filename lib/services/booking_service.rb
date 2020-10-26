# Module to handle List
module BookingService

  # Setup config from Google API to get distances and calculate minimum path
  def self.configure(config = {})
    @config = config
  end

  #  response for output
  def self.arrange(list)
    # TODO: Calculation of minimum path
    list
  end
end
