require 'rubygems'
require 'sinatra'

get '/genderid/:name' do
  gender = `echo #{params[:name].capitalize} | awk -f gender.awk`
  gender
end


