#!/usr/bin/env ruby

require 'rubygems'
require 'oauth'
require 'json'

# You will need to set your application type to
# read/write on dev.twitter.com and regenerate your access
# token.  Enter the new values here:
consumer_key = OAuth::Consumer.new(
  "YOUR CUSTOMER API KEY HERE", # CUSTOMER API KEY
  "YOUR CUSTOMER API SECRET KEY") # CUSTOMER API SECRET KEY
access_token = OAuth::Token.new(
  "YOUR ACCESS KEY HERE", # ACCESS KEY
  "YOUR ACCESS SECRET KEY") # ACCESS SECRET KEY

# Get the data calling a Shell command from Ruby
  artist = "mocp -i | grep Artist | cut -c 9-"     # Get the artist's name executing shell command
  song   = "mocp -i | grep SongTitle | cut -c 12-" # Get the song's name executing shell command

  artist_value = %x[ #{artist} ].chomp  # Get the value of execute "artist" command
  song_value   = %x[ #{song} ]          # Get the value of execute "song" command

# If song or artist are not null, compose a new tweet and send it.
if song_value == "" && artist_value == "" then

  puts "Error: cannot get song or artist data."

else

  # Composes.
  tweet_to_send = "#NowPlaying #{artist_value} - #{song_value}"

  # Send.
  baseurl = "https://api.twitter.com"
  path    = "/1.1/statuses/update.json"
  address = URI("#{baseurl}#{path}")
  request = Net::HTTP::Post.new address.request_uri
  request.set_form_data(
    "status" => tweet_to_send
  )

end

# Set up HTTP.
http             = Net::HTTP.new address.host, address.port
http.use_ssl     = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

# Issue the request.
request.oauth! http, consumer_key, access_token
http.start
response = http.request request

# Parse and print the Tweet if the response code was 200
tweet = nil
if response.code == '200' then
  tweet = JSON.parse(response.body)
  puts "Successfully sent #{tweet["text"]}"
else
  puts "Could not send the Tweet! " +
  "Code:#{response.code} Body:#{response.body}"
end
