class DailyWeather

  attr_reader :datetime,
              :sunrise,
              :sunset,
              :maximum_temperature,
              :minimum_temperature,
              :conditions,
              :icon

  def initialize(data)
    @datetime = Time.at(data[:dt])
    @sunrise = Time.at(data[:sunrise])
    @sunset = Time.at(data[:sunset])
    @maximum_temperature = kelvin_to_farenheit(data[:temp][:max])
    @minimum_temperature = kelvin_to_farenheit(data[:temp][:min])
    @conditions = data[:weather].first[:main]
    @icon = data[:weather].first[:icon]
  end

  def kelvin_to_farenheit(temperature)
    ((temperature - 273.15) * 1.8 + 32).round(2)
  end
end
