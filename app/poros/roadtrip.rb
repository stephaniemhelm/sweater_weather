class Roadtrip

  attr_reader :id,
              :start_city,
              :end_city,
              :travel_time


  def intitialize(data, origin, destination, weather)
    @id = nil
    @start_city = "#{origin}"
    @end_city = "#{destination}"
    @travel_time = data[:route][:formattedTime]
    #@weather_at_eta = "#{weather}"

  end
end
