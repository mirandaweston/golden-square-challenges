require 'date'
require 'json'
#require 'net/http'

class TimeError

  def initialise(requester)
    @requester = requester
  end
  # Returns difference in seconds between server time
  # and the time on this computer
  def error
    return get_server_time - Time.now
  end

  private

  def get_server_time
    text_response = @requester.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(text_response).to_time
  end
end