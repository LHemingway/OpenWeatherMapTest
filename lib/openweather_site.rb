class OpenweatherSite

	def openweather_homepage
		Pages::OpenweatherHomepage.new			
	end	

	def openweather_login_page
		Pages::OpenweatherLoginPage.new			
	end	

	def openweather_profile_page
		Pages::OpenweatherProfilePage.new
	end
	
end