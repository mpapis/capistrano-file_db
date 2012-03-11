# Simle capistrano plugin to manage database files

Extracted it to not repeat myself next time I need to use sqlite db on server.
At first I wanted to name it "capistrano-sqlite3" but it could be used for any files, not only sqlite3 databases.

## Installation

```bash
gem install capistrano-unicorn
```

## Usage

Add the gem to your `Gemfile`:

```ruby
group :development do
  gem 'capistrano-file_db'
end
```

Ad the plugin in `config/deploy.rb`

```ruby
require 'capistrano-file_db'
```

## Configuration options

- `file_db_path`   - Set path to databases dir. Default to `db`.
- `file_db_files`  - Set list of database files. Default to `["#{RAILS_ENV||'production'}.sqlite3"]`.
- `file_db_rights` - Set rights to set for files. Default to `600` - read/wrtie only for owner.
