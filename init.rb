require 'redmine'

require_dependency 'redmine_project_owner'
require_dependency 'redmine_project_owner/hooks/view_projects_form_hook'

require File.join(File.dirname(__FILE__), 'app/helpers/application_helper.rb')

Redmine::Plugin.register :redmine_project_owner do
  name 'Project owner plugin'
  url 'https://github.com/circumlunar/redmine_project_owner'
  description 'This is a plugin for Redmine'

  author 'Maya Terzieva'
  author_url 'https://github.com/circumlunar'

  version '0.0.1'

  requires_redmine version_or_higher: '4.1.1'
end

Rails.configuration.to_prepare do
  RedmineProjectOwner.setup
end
