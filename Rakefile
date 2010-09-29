desc 'Build Compass output'
task :compass do
  Rake::Task['compass:clean'].execute
  system 'bundle exec compass compile -c config/compass.rb'
end

namespace :compass do
  desc 'Clean Compass output'
  task :clean do
    system 'rm -rf jekyll/stylesheets/*'
  end
  
  desc 'Start Compass watching the stylesheets directory'
  task :watch do
    Rake::Task['compass:clean'].execute
    system 'bundle exec compass watch -c config/compass.rb'
  end
end

desc 'Start local server'
task :server do
  Rake::Task['jekyll'].execute
  system 'bundle exec shotgun config.ru'
end

desc 'Clean and rebuild the Jekyll site'
task :jekyll do
  Rake::Task['compass'].execute
  Rake::Task['jekyll:clean'].execute
  system 'cd jekyll && bundle exec jekyll'
end

namespace :jekyll do
  desc 'Clean Jekyll site'
  task :clean do
    system 'rm -rf jekyll/_site'
  end

  desc 'Clean site and start watching'
  task :auto do
    Rake::Task['compass'].execute
    Rake::Task['jekyll:clean'].execute
    system 'cd jekyll && bundle exec jekyll --auto'
  end
end
