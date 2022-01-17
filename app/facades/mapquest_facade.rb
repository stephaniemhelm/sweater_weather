class MapquestFacade

  def self.get_latitude_and_longitude(location)
    data = MapquestService.get_latitude_and_longitude(location)
    Location.new(data)
  end

  def self.get_roadtrip_data(origin, destination)
    data = MapquestService.get_roadtrip_data(origin, destination)
    Roadtrip.new(data)
  end
end
