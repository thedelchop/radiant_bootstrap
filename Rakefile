require File.join(File.dirname(__FILE__), 'config', 'boot')

import File.join(RADIANT_ROOT, 'Rakefile')

desc "Setup project by bootstrapping the db for all of the extensions and copying any/all extra extension files into the public folder"
task :install => ['db:bootstrap', 'db:migrate:extensions', 'radiant:extensions', 'db:export'] do 
   ['radiant:extensions:forms:update', 'radiant:extensions:sns:update',
   'radiant:extensions:privileges:update', 'radiant:extensions:paperclipped:update', 'db:export'].each do |extension|
      Rake::Task[extension].invoke
   end
   puts "Ran all migrations and updates, your radiant project should be ready for development!"
end
