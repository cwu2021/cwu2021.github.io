# https://linuxhint.com/parse-json-in-ruby/
# gem install json. built-in > 2.7
# gem install colorize
require 'json'
require 'colorize'
require 'uri'
require 'net/http'

# https://uptimerobot.com/api/
# https://linuxize.com/post/curl-post-request/
# curl -X POST "https://api.uptimerobot.com/v2/getMonitors?api_key=enterYourAPIKeyHere"
# Logtail - Python Logging Made Easy
# https://github.com/logtail/logtail-python

url = URI("https://api.uptimerobot.com/v2/getMonitors")
          
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE
          
request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/x-www-form-urlencoded'
request["cache-control"] = 'no-cache'
request.body = "api_key=enterYourAPIKeyHere&format=json&logs=1"
          
response = http.request(request)
puts response.read_body

# https://stackoverflow.com/questions/1489183/how-can-i-use-ruby-to-colorize-the-text-output-to-a-terminal
# https://stackoverflow.com/questions/5410682/parsing-a-json-string-in-ruby

raw_data = File.read('NASA.json')
nasa_datahash = JSON.parse(raw_data)
puts nasa_datahash.keys
nasa_datahash["monitors"].each do |mon|
 print mon["friendly_name"]," status: ".cyan,mon["status"],"\n"
end
