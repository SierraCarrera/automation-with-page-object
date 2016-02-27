Feature: Search Google
As a student 
I want to find class info 
So that I know when the class is held

	Scenario: Retrieve course information
	When I go to Google
	When I search for Columbus State
	When I go to that site
	When I search for my course
	When I go to that course page
	Then I want the course information