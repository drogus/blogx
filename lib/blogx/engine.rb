module Blogx
  class Engine < Rails::Engine
    config.generators do |g|
      g.template_engine :haml
      g.orm             :mongoid
    end
  end
end
