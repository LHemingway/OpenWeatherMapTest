class Pages::OpenweatherProfilePage < SitePrism::Page

	element :profile_username, '#profile_form_username'
	element :logout_button, '#btn-orange'

	def find_username
		profile_username
	end

	def find_logout
		logout_button
	end	
	
end