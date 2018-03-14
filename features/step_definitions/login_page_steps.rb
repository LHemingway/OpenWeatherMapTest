Given(/^I am on the homepage$/) do
	@openweather_site = OpenweatherSite.new
	@openweather_site.openweather_homepage.load
end

When(/^I click sign in$/) do
	@openweather_site.openweather_homepage.find_sign_in.click
end

And(/^Enter my credentials$/) do
	@openweather_site.openweather_login_page.fill_email_field(ENV['OPENWEATHER_EMAIL'])
	@openweather_site.openweather_login_page.fill_password_field(ENV['OPENWEATHER_PASSWORD'])
	@openweather_site.openweather_login_page.find_submit_button.click
end

Then(/^I am taken to my profile page$/) do
	expect(@openweather_site.openweather_profile_page.find_username.visible?).to be true
end
