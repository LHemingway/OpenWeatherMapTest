class Pages::OpenweatherHomepage < SitePrism::Page

	set_url 'https://openweathermap.org/'
	# set_url_matcher	/openweathermap.org\/

	element :sign_in_button, :xpath, '/html/body/div[1]/div/div/div[1]/a[3]'
	
	def find_sign_in
		sign_in_button	
	end

end