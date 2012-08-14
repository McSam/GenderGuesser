require 'rubygems'
require 'sinatra'
require 'json'

get '/genderid/:name' do
  gender = `echo #{params[:name].capitalize} | awk -f gender.awk`
  status 200
  content_type :json
  { :name => params[:name].capitalize, :gender => gender }.to_json
end


