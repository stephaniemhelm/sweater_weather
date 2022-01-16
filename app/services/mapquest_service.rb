class MapquestService < BaseService

  def self.get_latitude_and_longitude(location)
    response = conn('http://www.mapquestapi.com').get('/geocoding/v1/address') do |f|
      f.params['key'] = ENV['mapquest_api_key']
      f.params['location'] = "#{location}"
    end
    format_json(response)
  end
end
