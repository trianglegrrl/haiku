require 'rubygems'
require 'pp'
require 'capybara'

Capybara.app_host = "http://www.everypoet.com/"

session = Capybara::Session.new :poltergeist

session.visit '/haiku/'
all_nodes = session.all 'font font'

pp all_nodes.first.text