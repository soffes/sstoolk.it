class SSToolkit < Sinatra::Application
  PUBLIC_PATH = File.expand_path('../public', __FILE__)
  
  set :app_file, __FILE__
  set :root, File.dirname(__FILE__)
  set :public, PUBLIC_PATH
 
  # This before filter ensures that your pages are only ever served 
  # once (per deploy) by Sinatra, and then by Varnish after that
  before do
    response.headers['Cache-Control'] = 'public, max-age=31557600' # 1 year
  end

  not_found do
    erb :four_oh_four
  end

  get '/' do
    erb :home
  end
  
  get '/documentation' do
    redirect '/documentation/'
  end
  
  get '/sample-?code' do
    redirect 'http://github.com/samsoffes/sscatalog/'
  end

  get %r{/([a-zA-Z\-_\/]+)/?} do
    paths = [
      '.html',
      'index.html'
    ]
    
    output = nil
    paths.each do |path|
      path = "#{PUBLIC_PATH}/#{params[:captures].first}#{path}"
      if File.exist?(path)
        output = File.read(path)
        break
      end
    end
    
    not_found unless output
    output
  end

end
