require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

get '/sms-quickstart' do
	twiml = Twilio::TwiML::Response.new do |r|
		r.Message do |message|
			message.Body "Body"
			message.MediaUrl "http://demo.twilio.com/owl.png"
		end
	end
	twiml.text
end