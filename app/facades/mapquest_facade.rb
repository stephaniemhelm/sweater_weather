class MapquestFacade

  def self.get_latitude_and_longitude(location)
    data = MapquestService.get_latitude_and_longitude(location)
    Location.new(data)
    #require "pry"; binding.pry
  end

end
