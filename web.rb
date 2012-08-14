require 'sinatra'
require "sinatra/json"

get '/genderid/:name' do
  status 200
  body(`echo Ricky | awk -f gender.awk`.to_json)
end


