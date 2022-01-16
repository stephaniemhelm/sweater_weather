class HourlyWeather

  attr_reader :datetime,
              :temperature,
              :conditions,
              :icon

  def initialize(data)
    #require "pry"; binding.pry
    @datetime = Time.at(data[:dt])
    @temperature = kelvin_to_farenheit(data[:temp])
    @conditions = data[:weather].first[:main]
    @icon = data[:weather].first[:icon]
  end

  def kelvin_to_farenheit(temperature)
    ((temperature - 273.15) * 1.8 + 32).round(2)
  end
end
