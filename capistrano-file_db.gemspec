Gem::Specification.new do |gem|
  gem.name = 'capistrano-file_db'
  gem.version = '1.0.0'
  gem.authors = ["Michal Papis"]
  gem.email = "mpapis@gmail.com"
  gem.license = 'Apache 2.0'
  gem.homepage = 'https://github.com/mpapis/capistrano-file_db'
  gem.summary = "Sqlite3 integration for Capistrano"
  gem.description = "Capistrano plugin that easies handling database files on production."
  gem.has_rdoc = false
  gem.files = [
    "lib/capistrano-file_db.rb",
    "LICENSE",
    "README.md",
    "capistrano-file_db.gemspec",
  ]
  gem.add_runtime_dependency 'capistrano'
end
