#Description

This project is a simple bootstrap of my typical Radiant installation.  It is meant to be cloned, renamed, and then setup using the 
      rake install
command.  This will run all the migrations nessecary to use Radiant and the common extensions that I have included.

#Features

This project takes advantage of the following extensions:

+ Styles 'n Scripts - http://github.com/radiant/radiant-sns-extension
+ Privileges - http://github.com/thedelchop/privileges
+ Nested Layouts - http://github.com/moklett/radiant-nested-layouts-extension
+ Paperclipped - http://github.com/kbingman/paperclipped
+ Import/Export - http://github.com/radiant/radiant-import-export-extension
+ Forms Extension - http://github.com/squaretalent/radiant-forms-extension
+ Forms Mailer Extension - http://github.com/squaretalent/radiant-forms_mail_extensions

#Usage

After cloning this repository, simply rename to whatever you would like, remove the .git folder and 
run a 
  git init
.  This will allow the bootstrap to act as your own project will saving the trouble of cloning all the 
extensions seperately.

Then, it is nessecary to run
  rake install
which will run the following rake commands:
  rake db:bootstrap

  rake db:migrate:extensions

  rake radiant:extensions:forms:update
  rake radiant:extensions:sns:update
  rake radiant:extensions:privileges:update
  rake radiant:extensions:paperclipped:update

  rake db:export

Then its off to developing your own website using Radiant CMS!
