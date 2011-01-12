desc 'Build Compass output'
task :compass => [:'compass:clean'] do
  system 'bundle exec compass compile -c config/compass.rb'
end

desc 'Clean everything'
task :clean => [:'compass:clean', :'docs:clean'] do
  puts 'Cleaned.'
end

namespace :compass do
  desc 'Clean Compass output'
  task :clean do
    system 'rm -rf public/stylesheets/*'
  end
  
  desc 'Start Compass watching the stylesheets directory'
  task :watch => [:'compass:clean'] do
    system 'bundle exec compass watch -c config/compass.rb'
  end
end

desc 'Start local server'
task :server  => [:compass] do
  system 'bundle exec shotgun config.ru'
end

namespace :docs do
  desc 'Clean docs'
  task :clean do
    system 'rm -rf public/documentation'
  end

  desc 'Import docs. Requires SSToolkit repo at ../sstoolkit'
  task :import => [:'docs:clean'] do
    system 'rake --rakefile ../sstoolkit/Documentation/Rakefile'
    system 'cp -R ../sstoolkit/Documentation/Output public/documentation'
    puts 'Imported.'
  end
end
