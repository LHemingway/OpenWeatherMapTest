Before('@logged_in') do
	@openweather_site = OpenweatherSite.new
	@openweather_site.openweather_login_page.load
	@openweather_site.openweather_login_page.fill_email_field(ENV['OPENWEATHER_EMAIL'])
	@openweather_site.openweather_login_page.fill_password_field(ENV['OPENWEATHER_PASSWORD'])
	@openweather_site.openweather_login_page.find_submit_button.click
	
end