require 'pry'
require 'net/http'
require 'json'

class Daylight
  API_KEY = "cd20ada7a9e81ce0a030cf0b5286faed"

  def test_daylight
    puts "testing sunrise/set"
  end

  def self.timezone
    timezone = Time.now.zone
  end

  def self.get_forecast_from(lon, lat)
    url = "http://api.openweathermap.org/data/2.5/weather?lat=#{lat}&lon=#{lon}&appid=#{API_KEY}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    weather = JSON.parse(response)
    sunrise = weather["sys"]["sunrise"]
    sunset = weather["sys"]["sunset"]
    binding.pry
  end
end 