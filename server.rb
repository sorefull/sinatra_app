require 'sinatra'
require 'json'

   get '/' do
     erb :'welcome.html'
   end

   get '/about' do
     erb :'about.html'
   end

   get '/about.json' do
     erb :'about.json'
   end

   get '/test' do
      if (@v1 = params[:first_val].to_i) && (@v2 = params[:second_val].to_i)
       @res = @v1 + @v2
     end
      erb :'test.html'
   end


# params [  :first_val, :second_val,  :op]
#           10          20            "+"
