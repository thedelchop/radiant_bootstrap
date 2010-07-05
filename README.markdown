#Description

This project is a simple bootstrap of my typical Radiant installation.  It is meant to be cloned, renamed, and then setup using the 
      rake install
command.  This will run all the migrations nessecary to use Radiant and the common extensions that I have included.

#Features

This project takes advantage of the following extensions:

+ [Styles 'n Scripts](http://github.com/radiant/radiant-sns-extension) - A DRY'er way to manage CSS and JS inside Raidant.
+ [Privileges](http://github.com/thedelchop/privileges) - Restricts regular radiant users to only updating content.  Perfect for designers who want to allow their customers to update some content, but are afraid of letting them add or remove pages or play with the design.
+ [Nested Layouts](http://github.com/moklett/radiant-nested-layouts-extension) - A DRY'er way of managing layouts in Radiant, allowing layouts to cascade, much like stylesheets.
+ [Paperclipped](http://github.com/kbingman/paperclipped) - Utiltiy to allow for image attachment.
+ [Import/Export](http://github.com/radiant/radiant-import-export-extension) - A better way to import/export your SQL dbs, allowing them to be checked into source control or migrated to new servers.
+ [Forms](http://github.com/squaretalent/radiant-forms-extension) - Extension to more effciently manage forms within Radiant.
+ [Forms Mailer](http://github.com/squaretalent/radiant-forms_mail_extensions) - Extension built on top of radiant-forms-extension to allow for forms to be used as email inquiries.
+ [Wym Editor Filter](http://github.com/jomz/radiant-wym-editor-filter-extension) - Page editor filter that uses the WYSIWYM style, allowing easier update of content while preventing design changes.
+ [Copy Move](http://github.com/pilu/radiant-copy-move) - Nifty extension that allow you to copy and moves pages around in the tree structue instead of creating duplicates.
+ [Reorder](http://github.com/radiant/radiant-reorder-extension) - Provides an interface within Radiant CMS for the reording of the pages structure for a Radiant site.
+ [Settings](http://github.com/Squeegy/radiant-settings) - Provides a "Settings" tab in the Radiant CMS interface for better handling of the Radiant configuration options.


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

      rake radiant:extensions:update_all

      rake db:export

Then its off to developing your own website using Radiant CMS!
