require "binlist/version"
require	"httparty"

module Binlist
	include HTTParty
	base_uri "binlist.net" 

	# This is called to find a Bin  
	# @params bin [string]
	# @return [Net::HTTPResponse] A subclass of Net::HTTPResponse, e.g. Net::HTTPOK 

	def self.find(bin)
		get("/json/#{bin}")
	end
end
