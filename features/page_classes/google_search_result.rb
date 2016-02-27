require 'page-object'

class GoogleSearchResults

	include PageObject

	divs(:results, class: 'g')

	def first_result()
		self.results_elements[0].div.div.h3.a
	end
end