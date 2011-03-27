# sstoolk.it

This is the website for [SSToolkit](http://github.com/samsoffes/sstoolkit). Built with [Sinatra](http://github.com/sinatra/sinatra), [Compass](http://github.com/chriseppstein/compass), and other stuff. Deployed to [Heroku](http://heroku.com) with Ruby 1.9.2.

## Running Locally

You will need to install [Bundler](http://gembundler.com) (if you haven't already) and all the necessary gems. You can install it by running the following:

    $ gem install bundler --version '>= 1.0.0'
    $ bundle install

Now the following command to start the server and you're good to go.

    $ rake server

Enjoy.

## Documentation

To import the documentation from SSToolkit run the following commands:

    $ git clone http://github.com/samsoffes/sstoolkit.git ../sstoolkit
    $ rake docs:import
