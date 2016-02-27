require 'page-object'

class CsccHome
	include PageObject

	text_field(:search_phrase, id: 'input')
  
	def search_for(phrase)
		self.search_phrase = phrase
		@browser.send_keys :enter
	end
end