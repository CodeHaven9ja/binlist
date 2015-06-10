require "binlist/version"
require	"httparty"

module Binlist
	include HTTParty
	base_uri "binlist.net" 

	def self.find(bin)
		get("/json/#{bin}")
	end
end
