class Pages::OpenweatherLoginPage < SitePrism::Page

	set_url 'https://home.openweathermap.org/users/sign_in'

	element :email_input, '#user_email'
	element :password_input, '#user_password'


	def fill_email_field(email)
		email_input.set(email)
	end

	def fill_password_field(password)
		password_input.set(password)
	end

	def find_submit_button
		find_button('Submit')
	end
	
end