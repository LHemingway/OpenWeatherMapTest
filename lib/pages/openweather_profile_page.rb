class Pages::OpenweatherProfilePage < SitePrism::Page

	element :profile_username, '#profile_form_username'

	def find_username
		profile_username
	end
	
	
end