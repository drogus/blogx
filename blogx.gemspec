# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "blogx"
  s.summary = "Blog engine for Rails 3.1"
  s.description = "Simple blog engine for Rails 3.1 apps."
  s.files = Dir["{app,config,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.version = "0.0.1"

  s.add_dependency("rails", ">= 3.1.0.rc1")
  s.add_dependency("mongoid", ">= 2.0.0")
  s.add_dependency("haml")

  s.add_development_dependency("haml-rails", ">= 0.3.4")
end
