require 'rubygems'
require 'sinatra'
require 'json'

get '/genderid/:name' do
  gender = `echo #{params[:name].capitalize} | awk -f gender.awk`
  status 200
  content_type :json
  { :gender => gender, :name => params[:name].capitalize }.to_json
end


