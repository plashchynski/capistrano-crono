capistrano-crono
------------------------
 
[Crono](https://github.com/plashchynski/crono/) integration for [Capistrano](https://github.com/capistrano/capistrano)

## Requirements

Capistrano 3.*


## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-crono', group: :development

And then execute:

    $ bundle

## Usage
Add the following to your Capfile

    # Capfile
    require 'capistrano/crono'

Configurable options, with defaults:

    # deploy.rb
    set :crono_pid, -> { File.join(shared_path, 'tmp', 'pids', 'crono.pid') }
    set :crono_env, -> { fetch(:rack_env, fetch(:rails_env, fetch(:stage))) }
    set :crono_log, -> { File.join(shared_path, 'log', 'crono.log') }
    set :crono_role, -> { :app }

## Support

Feel free to create [issues](https://github.com/plashchynski/capistrano-crono/issues)


## License
 
Please see [LICENSE](https://github.com/plashchynski/capistrano-crono/blob/master/LICENSE) for licensing details.
