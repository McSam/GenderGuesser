require 'rubygems'
require 'sinatra'

get '/genderid/:name' do
  gender = `echo #{params[:name].capitalize} | awk -f gender.awk`
  status 200
  body(gender.to_json)
  gender.to_json
end


