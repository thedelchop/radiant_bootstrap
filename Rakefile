require File.join(File.dirname(__FILE__), 'config', 'boot')

import File.join(RADIANT_ROOT, 'Rakefile')

task :default => 'db:bootstrap'do
  Rake::Task['db:bootstrap'].invoke
#  ['db:bootstrap', 'db:migrate:extensions',
#    'radiant:extensions:forms:update', 'radiant:extensions:sns:upduate',
#    'radiant:extensions:privileges:update', 'radiant:extensions:paperclipped:update'].each do |extension|
#      Rake::Task[extension].invoke
#    end
end
