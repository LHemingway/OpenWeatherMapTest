Given (/^I am logged in on the homepage$/) do
	@openweather_site = OpenweatherSite.new
	@openweather_site.openweather_homepage.load
	@openweather_site.openweather_homepage.displayed?
end

When (/^I search for Leeds$/) do
	@openweather_site.openweather_homepage.find_city_search.click
	@openweather_site.openweather_homepage.find_city_search_type.send_keys('Leeds')
	@openweather_site.openweather_homepage.find_search_button.click
	expect(current_url).to include('find?q=')
	@openweather_site.openweather_homepage.find_leeds.click
end

And (/^Click on the hourly weather tab$/) do
	expect(current_url).to eql 'https://openweathermap.org/city/2644688'
	@openweather_site.openweather_homepage.find_hourly_weather.click
end

Then (/^I can see the predicted weather for the day$/) do
	expect(@openweather_site.openweather_homepage.find_hourly_weather_head.visible?).to be true
	sleep 5
end