require 'time_error'

describe TimeError do
    it "calls an API and returns the difference in seconds between server time and current time" do
        requester = double :requester
        expect(requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"79.79.210.132","datetime":"2023-01-26T23:31:36.395689+00:00","day_of_week":4,"day_of_year":26,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1674775896,"utc_datetime":"2023-01-26T23:31:36.395689+00:00","utc_offset":"+00:00","week_number":4}')

        time = Time.new(2023,1,23,22,22,22,'+00:00')
        time_error = TimeError.new(requester)
        result = time_error.error
        expect(result).to eq "2023-01-26T23:31:36.395689+00:00"
    end
end