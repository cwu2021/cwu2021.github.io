# https://linuxhint.com/parse-json-in-ruby/
# gem install json. built-in > 2.7

require 'json'
raw_data = File.read('NASA.json')
nasa_datahash = JSON.parse(raw_data)
puts nasa_datahash.keys
