Gem::Specification.new do |gem|
  gem.name = 'capistrano-file_db'
  gem.version = '0.1.0'
  gem.date = "2012-03-11"
  gem.authors = ["Michal Papis"]
  gem.email = "mpapis@gmail.com"
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
