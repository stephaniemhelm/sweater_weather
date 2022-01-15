class CurrentWeather

  attr_reader :datetime,
              :sunrise,
              :sunset,
              :temperature,
              :feels_like,
              :humidity,
              :uvi,
              :visibility,
              :conditions,
              :icon

  def initialize(data)
    @datetime = Time.at(data[:current][:dt]).to_s
    @sunrise = Time.at(data[:current][:sunrise]).to_s
    @sunset = Time.at(data[:current][:sunset]).to_s
    @temperature = kelvin_to_farenheit(data[:current][:temp])
    @feels_like = kelvin_to_farenheit(data[:current][:feels_like])
    @humidity = data[:current][:humidity]
    @uvi = data[:current][:uvi]
    @visibility = data[:current][:visibility]
    @conditions = data[:current][:weather].first[:main]
    @icon = data[:current][:weather].first[:icon]
  end

  def kelvin_to_farenheit(temperature)
    ((temperature - 273.15) * 1.8 + 32).round(2)
  end
end
