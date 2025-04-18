require 'sinatra'

get '/' do
  @tracks = Dir.entries('public/tracks').select { |f| f.end_with?('.mp3') }
  erb :index
end
