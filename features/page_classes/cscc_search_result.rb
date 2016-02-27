require 'page-object'

class CsccSearchResults

	include PageObject

	divs(:results, class: 'gs-title gsc-table-cell-thumbnail gsc-thumbnail-left')

	def first_result()
		self.results_elements[0].a
	end

end