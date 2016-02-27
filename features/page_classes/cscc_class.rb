require 'page-object'

class CsccClass

	include PageObject

	div(:info, id: 'course-info')

	def prereqs()
		self.info.ps[4]
	end

end