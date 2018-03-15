Before('@logged_in') do
	@openweather_site = OpenweatherSite.new
	@openweather_site.openweather_login_page.load
	@openweather_site.openweather_login_page.fill_email_field(ENV['OPENWEATHER_EMAIL'])
	@openweather_site.openweather_login_page.fill_password_field(ENV['OPENWEATHER_PASSWORD'])
	@openweather_site.openweather_login_page.find_submit_button.click
end

# After do
# openweather_site.openweather_homepage.find_sign_in.click
# openweather_site.openweather_profile_page.find_log_out.click
# end

After do
	Capybara.current_session.driver.quit
end