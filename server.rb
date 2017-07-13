require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  erb :index
end

get '/gallery' do
  redirect to('/portfolio')
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about
end

get '/favorites' do
  @fav_links = ['<a href="http://www.google.com">Google</a>', '<a href="http://www.youtube.com">Youtube</a>', '<a href="http://www.reddit.com">Reddit</a>']
  erb :favorites
end
