require 'haml'

module Blogx
  class Engine < Rails::Engine
    config.app_generators do |g|
      g.template_engine :haml
      g.orm             :mongoid
    end

    config.before_initialize do
      Haml.init_rails(binding)
      Haml::Template.options[:format] = :html5
    end
  end
end
