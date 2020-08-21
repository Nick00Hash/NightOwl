require 'pry'
require 'net/http'
require 'json'

class Daylight
  API_KEY = "0873c2ee7c0eb990135d907beb4c8662"
  lat = "42.361145"
  lon = "-71.057083"

  def test_daylight
    puts "testing sunrise/set"
  end

  def self.timezone
    timezone = Time.now.zone
  end

  def self.get_forecast_from(lon, lat)
    url = "api.openweathermap.org/data/2.5/weather?lat=#{lat}&lon=#{lon}&appid=#{API_KEY}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end 