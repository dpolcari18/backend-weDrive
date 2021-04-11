require 'rest-client'

class WeatherController < ApplicationController
    def show
        weather = get_weather(params[:city])
        render json: {weather: weather}
    end

    private
    def get_weather(city)
        key = ENV['WEATHER_API_KEY']
        url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}&units=imperial&appid=#{key}"
        
        weather_res = RestClient.get(url)
        
        return weather_res.body
    end
end
