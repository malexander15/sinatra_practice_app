require 'sinatra'
require_relative 'scheduler'
require_relative 'schedule'
get '/' do
  erb :index
end

get '/new_lesson' do
 
end

post '/grade_lesson' do
end

get '/lesson_results' do

end

post '/schedule' do
end
