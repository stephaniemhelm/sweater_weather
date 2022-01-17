class MapquestService < BaseService

  def self.get_latitude_and_longitude(location)
    response = conn('http://www.mapquestapi.com').get('/geocoding/v1/address') do |f|
      f.params['key'] = ENV['mapquest_api_key']
      f.params['location'] = "#{location}"
    end
    format_json(response)
  end

  def self.get_roadtrip_data(origin, destination)
    response = conn('http://www.mapquestapi.com').get('/directions/v2/route') do |f|
      f.params['key'] = ENV['mapquest_api_key']
      f.params['from'] = "#{origin}"
      f.params['to'] = "#{destination}"
    end
    format_json(response)
  end
end
