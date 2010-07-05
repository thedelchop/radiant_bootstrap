require File.join(File.dirname(__FILE__), 'config', 'boot')

import File.join(RADIANT_ROOT, 'Rakefile')

desc "Setup project by bootstrapping the db for all of the extensions and copying any/all extra extension files into the public folder"
task :install => ['db:bootstrap', 'db:migrate:extensions', 'radiant:extensions:update_all', 'radiant:extensions:wym_editor_filter:install','db:export'] do 
   puts "Ran all migrations and updates, your radiant project should be ready for development!"
end
