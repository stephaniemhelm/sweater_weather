require 'rails_helper'

RSpec.describe HourlyWeather do
  it 'has hourly weather attributes' do
    data =
        {:dt=>1642280400,
         :temp=>281.13,
         :feels_like=>280.39,
         :pressure=>1025,
         :humidity=>12,
         :dew_point=>255.46,
         :uvi=>2.02,
         :clouds=>0,
         :visibility=>10000,
         :wind_speed=>1.59,
         :wind_deg=>297,
         :wind_gust=>3.48,
         :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
         :pop=>0}


    first_hour = HourlyWeather.new(data)
    expect(first_hour.temperature).to eq(46.36)
    expect(first_hour.conditions).to eq("Clear")
    expect(first_hour.icon).to eq("01d")
  end
end
