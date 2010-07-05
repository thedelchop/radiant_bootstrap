# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class PrivilegesExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/privileges"
  
  # extension_config do |config|
  #   config.gem 'some-awesome-gem
  #   config.after_initialize do
  #     run_something
  #   end
  # end

  # See your config/routes.rb file in this extension to define custom routes
  
  def activate
    admin.page.index[:node].delete('add_child_column')
    admin.page.index[:node].delete('remove_column')
    admin.page.index[:sitemap_head].delete('modify_column_header')
   # admin.page.edit[:form].delete('edit_layout_and_type')

    admin.page.index.add :node, 'conditional_add_child_column', :after => 'status_column'

    admin.page.index.add :node, 'conditional_remove_column', :after => 'add_child_column'

    admin.page.index.add :sitemap_head, 'conditional_modify_column_header', :after => 'status_column_header'

    admin.page.edit.add :main, 'privileges_includes', :before => 'edit_header'  

   # admin.page.edit.add :form, 'conditional_edit_layout_and_type', :before => 'edit_timestamp'
  end
end
