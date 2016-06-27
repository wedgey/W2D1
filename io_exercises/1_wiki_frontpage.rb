require 'open-uri'

url = "https://en.wikipedia.org/"
local_file = "wiki_frontpage.html"

data = open(url).read
File.open(local_file, "w") { |current_file| current_file.write(data) }
