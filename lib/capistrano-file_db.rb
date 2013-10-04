require 'capistrano'
require 'capistrano/version'

class CapistranoFileDB
  def self.load_into(capistrano_config)
    capistrano_config.load do
      _cset(:file_db_path, "db")
      _cset(:file_db_files, ["#{fetch(:rails_env) rescue 'production'}.sqlite3"] )
      _cset(:file_db_rights, "600")

      namespace :file_db do
        desc "Link sqlite database to shared location."
        task :symlink_db do
          _command = [ "mkdir -p \"#{shared_path}/#{file_db_path}\"" ]
          _command += file_db_files.map do |file|
            "ln -nfs \"#{shared_path}/#{file_db_path}/#{file}\" \"#{release_path}/#{file_db_path}/#{file}\""
          end
          run _command*"; \n"
        end

        desc "Limit access rights for sqlite database in shared location."
        task :chmod_db do
          _command = file_db_files.map do |file|
            "chmod 600 \"#{shared_path}/#{file_db_path}/#{file}\""
          end
          run _command*"; \n"
        end
      end

      after 'deploy:finalize_update', 'file_db:symlink_db'
      after 'deploy:migrate',         'file_db:chmod_db'
    end
  end
end

if Capistrano::Configuration.instance
  CapistranoFileDB.load_into(Capistrano::Configuration.instance)
end
