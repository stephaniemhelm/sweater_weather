class MapquestFacade

  def self.get_latitude_and_longitude(location)
    data = MapquestService.get_latitude_and_longitude(location)
    Location.new(data)
  end
end
