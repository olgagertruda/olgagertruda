require 'json'
require 'httparty'
require 'dotenv'

class Artwork
	include HTTParty
	base_uri "https://api.airtable.com/v0/appolAXqplZBvAfBB"

	def art
		self.class.get('/Table%201?api_key=keykx6o2ysAy0m8xs')
	end
end

art = Artwork.new

# Change the filename here below but make sure it's in the _data folder.
File.open("/Users/johnhaynes/documents/Github/olgagertruda/_data/art.json", "wb") do |f|
    data = art.art
    f.write(data)
end