Feature: Logging into open weather map

	Scenario: I can log into the open weather map site
		Given I am on the homepage 
		When I click sign in 
		And Enter my credentials 
		Then I am taken to my profile page