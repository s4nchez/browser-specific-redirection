require 'sinatra'
require 'browser'

get '/' do 'You probably wanted <a href="/go/destination-2">an example</a>. <br><br><br>Or perhaps you want to see the <a href="https://github.com/s4nchez/browser-specific-redirection">source code</a>?' end

get '/go/:destination' do |destination|
  browser = Browser.new(:ua => "request.env['HTTP_USER_AGENT']")
  platform = (browser.mobile? or browser.tablet?)? "mobile" : "desktop"
  redirect "/website/#{platform}##{destination}"
end

get '/website/:platform' do |platform|
  body = "Hello, #{platform}! <br>"
  (1..3).each do |i| 
  	body << "<span id='destination-#{i}'>#{platform} destination #{i}</span>"
  	100.times { body << "<br>"}
  end
  body
end
