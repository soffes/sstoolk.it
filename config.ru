require 'rubygems'
require 'bundler/setup'

require 'sinatra'
require 'app.rb'

set :environment, :production
set :run, false

run Sinatra::Application
