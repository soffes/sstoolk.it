set :app_file, __FILE__
set :root, File.dirname(__FILE__)

JEKYLL_ROOT = 'jekyll/_site'

get '/?' do
  # Just redirect to GitHub for now
  redirect 'http://github.com/samsoffes/sstoolkit'
end


class SSToolkit < Sinatra::Application
  set :public, JEKYLL_ROOT
 
  # This before filter ensures that your pages are only ever served 
  # once (per deploy) by Sinatra, and then by Varnish after that
  before do
    response.headers['Cache-Control'] = 'public, max-age=31557600' # 1 year
  end

  not_found do
    File.read("#{JEKYLL_ROOT}/four-oh-four.html")
  end

  get '/' do
    File.read("#{JEKYLL_ROOT}/index.html")
  end

  # TODO: This doesn't work because they are in public
  get %r{/([a-zA-Z\-_\/]+).html/?} do
    redirect("/#{params[:captures].first}")
  end

  get %r{/([a-zA-Z\-_\/]+)/?} do
    path = "#{JEKYLL_ROOT}/#{params[:captures].first}.html"
    File.exist?(path) or not_found
    File.read(path)
  end
end