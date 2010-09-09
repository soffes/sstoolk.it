set :app_file, __FILE__
set :root, File.dirname(__FILE__)

get '/?' do
  # Just redirect to GitHub for now
  redirect 'http://github.com/samsoffes/sstoolkit'
end
