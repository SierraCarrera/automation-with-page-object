require 'page-object'
include PageObject::PageFactory

When(/^I go to Google$/) do
	visit_page(GoogleHome) do |page|
	end
end

When(/^I search for Columbus State$/) do
	on_page(GoogleHome) do |page|
	 	page.search_for 'Columbus State Community College'
	 	sleep 3
	end
end

When(/^I go to that site$/) do    
  	on_page(GoogleSearchResults) do |page|
  		page.first_result.click
  	end
end

When(/^I search for my course$/) do    
  	on_page(CsccHome) do |page|
  		sleep 3
  		page.search_for 'CSCI 2994'
  	end
end

When(/^I go to that course page$/) do
  on_page(CsccSearchResults) do |page|
  	sleep 3
  	page.first_result.click
  	@browser.windows.last.use
  end
  # a(:search_results, class 'gs-title')
end

Then(/^I want the course information$/) do
  on_page(CsccClass) do |page|
  	sleep 3
  	expect(page.prereqs).to eq 'None'
  end
  # expect pre reqs : "none"
end