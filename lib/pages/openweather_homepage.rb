class Pages::OpenweatherHomepage < SitePrism::Page

	set_url 'https://openweathermap.org/'

	element :find_city, '#nav-search'
	element :find_city_search_bar, '#q'
	element :select_leeds, :xpath, '//*[@id="forecast_list_ul"]/table/tbody/tr[1]/td[2]/b[1]/a'
	element :hourly_weather_tab, '#tab-hourly'
	element :sign_in_button, '.pull-right'
	element :search_city_button, '.btn-default'
	element :hourly_weather_header, '.weather-forecast-hourly-list__header'

	def find_sign_in
		sign_in_button	
	end

	def find_city_search
		find_city
	end

	def find_city_search_type
		find_city_search_bar
	end

	def find_search_button
		search_city_button
	end

	def find_leeds
		select_leeds
	end

	def find_hourly_weather
		hourly_weather_tab
	end

	def find_hourly_weather_head
		hourly_weather_header
	end

end