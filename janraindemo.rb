require 'rubygems'  
require 'sinatra'
require './rpx'

helpers do
  def base_url
    @base_url ||= "#{request.env['rack.url_scheme']}://#{request.env['HTTP_HOST']}"
  end
end

get '/' do  
	erb :home
end  

post '/callback' do
	#params[:token]
	token = params[:token]
	rpx = Rpx::RpxHelper.new('17a9dced3acb1171dfb1322435f7b65bdab74eb1', 'https://rpxnow.com', 'se-assessment-project-eric-nelson')
	@authdata = rpx.auth_info(token)
	#@authdata
	erb :data
end