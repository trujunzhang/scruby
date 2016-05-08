# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'

require "whenever/capistrano"

# Include tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails
#   https://github.com/capistrano/passenger
#
require 'capistrano/rvm'

# deploy.rb or stage file (staging.rb, production.rb or else)
set :rvm_type, :user                     # Defaults to: :auto
set :rvm_ruby_version, '2.0.0-p648'      # Defaults to: 'default'
# set :rvm_custom_path, '~/.myveryownrvm'  # only needed if not detected

require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/passenger'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
