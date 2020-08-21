require "night_owl"
require 'night_owl/user_location'
require 'night_owl/daylight'


describe NightOwl do
  
  describe ".time" do 
    it "returns the time" do
      expect(Daylight.time).not_to eq(nil)
    end
  end
end