# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.2.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem "thoughtbot-quietbacktrace", :lib => "quietbacktrace", :source => "http://gems.github.com"
  config.time_zone = 'UTC'

  config.action_controller.session = {
    :session_key => '_movie-theater_session',
    :secret      => 'b78e3829a2df115d8b60aad842be6a43294c91e8ca70739e514cde31b5b70358aa79415ba926961defb00014a06bc8e779b9ee900b41903d69f0f0a95dd23cd4'
  }
end
