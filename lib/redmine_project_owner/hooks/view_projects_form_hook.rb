module RedmineProjectOwner
  module Hooks
    class ViewProjectsFormHook < Redmine::Hook::ViewListener
      render_on :view_projects_form, partial: 'redmine_project_owner/hooks/project_owner_dropdown'
    end
  end
end
