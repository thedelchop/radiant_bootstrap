require File.join(File.dirname(__FILE__), 'config', 'boot')

import File.join(RADIANT_ROOT, 'Rakefile')

task :default => ['db:bootstrap', 'db:migrate:extensions', 'db:export','radiant:extensions'] do 
  ['db:bootstrap', 'db:migrate:extensions',
   'radiant:extensions:forms:update', 'radiant:extensions:sns:update',
   'radiant:extensions:privileges:update', 'radiant:extensions:paperclipped:update', 'db:export'].each do |extension|
      Rake::Task[extension].invoke
   end
end
