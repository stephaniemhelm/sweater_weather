class RoadtripFacade

  def self.get_roadtrip_data(origin, destination)
    travel_time = MapquestService.get_roadtrip_data(origin, destination)
    weather = WeatherFacade.get_destination_weather(destination)
    trip = Roadtrip.new(origin, destination, travel_time, weather)
    require "pry"; binding.pry
  end
end
