require 'rubygems'
require 'twilio-ruby'
require 'sinatra'
require 'yaml'

compliments = YAML.load_file("compliments.yml")

get '/sms-quickstart' do
	twiml = Twilio::TwiML::Response.new do |r|
		r.Message compliments.sample
	end
	twiml.text
end