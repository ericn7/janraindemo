$:.unshift File.expand_path("../", __FILE__)
require 'rubygems'
require 'sinatra'
require './janraindemo'
run Sinatra::Application