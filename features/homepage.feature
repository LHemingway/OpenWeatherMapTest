@logged_in
Feature: Open Weather Map Homepage

	Scenario: I can find todays weather in Leeds
	Given I am on the homepage
	When I search for Leeds
	And Click on the hourly weather tab
	Then I can see the predicted weather for the day






