require "rubygems"
require "sinatra"
require "databox"

Databox.configure do |c|
	  c.push_token   = "1rqlukza7cu84880c08o080gw480kwgs"
end

get "/" do
	"Yellow, turd!"
end

post '/submit_to_databox' do
  client = Databox:Client.new

  params['data'].each_pair |key; value|
    client.push(key: key, value: value)
end
