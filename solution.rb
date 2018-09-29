require 'sinatra'

get '/' do

  @suma = params[:item]
  @suma = 0 if @suma == nil
  erb :index
end

get '/suma' do
  @suma = params[:suma].to_i + 1
  redirect "/?item=#{@suma}"

end
