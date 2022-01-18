class Roadtrip

  attr_reader :id,
              :start_city,
              :end_city,
              :travel_time,
              :weather_at_eta


  def initialize(origin, destination, travel_time, weather)
    @id = nil
    @start_city = "#{origin}"
    @end_city = "#{destination}"
    @travel_time = can_drive(travel_time)
    @weather_at_eta = get_weather_at_eta(weather, travel_time)
  end

  def get_weather_at_eta(weather, travel_time)
    time = @travel_time.to_i
    index = time - 1

    if travel_time[:route][:routeError][:errorCode] == 2
      {}
    elsif time > 48
      days = (time / 24) - 1
      { temperature: kelvin_to_farenheit(weather[:daily][days][:temp]), conditions: weather[:daily][days][:weather][0][:main]}
    else time <= 48
      { temperature: kelvin_to_farenheit(weather[:hourly][index][:temp]), conditions: weather[:hourly][index][:weather][0][:main]}
    end
  end

  def can_drive(travel_time)
    if travel_time[:route][:routeError][:errorCode] == 2
      "Impossible"
    else
      travel_time[:route][:formattedTime]
    end
  end

  def kelvin_to_farenheit(temperature)
    ((temperature - 273.15) * 1.8 + 32).round(2)
  end
end
