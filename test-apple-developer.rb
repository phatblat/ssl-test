#!/usr/bin/env ruby

require 'net/https'
require 'openssl'

http = Net::HTTP.new('developer.apple.com', 443)
http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

req = Net::HTTP::Head.new('/')

res = http.start { http.request(req) }

puts res
