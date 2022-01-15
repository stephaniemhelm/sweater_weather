require 'rails_helper'

RSpec.describe DailyWeather do
  it 'has daily weather attributes' do
    data =
          {:dt=>1642273200,
          :sunrise=>1642256478,
          :sunset=>1642291575,
          :moonrise=>1642284240,
          :moonset=>1642250880,
          :moon_phase=>0.43,
          :temp=>{:day=>278.64, :min=>262.55, :max=>280.73, :night=>268.68, :eve=>274.62, :morn=>262.93},
          :feels_like=>{:day=>277.68, :night=>263.92, :eve=>271.11, :morn=>256.83},
          :pressure=>1024,
          :humidity=>26,
          :dew_point=>262.01,
          :wind_speed=>3.71,
          :wind_deg=>302,
          :wind_gust=>5.34,
          :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
          :clouds=>0,
          :pop=>0,
          :uvi=>3.15}

    first_day = DailyWeather.new(data)

    expect(first_day.maximum_temperature).to eq(45.64)
    expect(first_day.minimum_temperature).to eq(12.92)
    expect(first_day.conditions).to eq("Clear")
    expect(first_day.icon).to eq("01d")
  end
end
