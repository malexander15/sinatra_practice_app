require 'sinatra'
require_relative 'scheduler'
require_relative 'schedule'
get '/' do
  erb :index
end

post '/schedule' do
  scheduler = Scheduler.new(params['start_time'], params['end_time']
  if scheduler.schedule_meeting
    redirect_to '/view_schedule'
  else
    redirect_to '/', locals: {flash_message: "Unable to create meeting. Scheduling conflict." }
  end 
end

get '/view_schedule' do
  scheduler = Schedule.full_schedule
end
