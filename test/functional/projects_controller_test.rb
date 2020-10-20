require File.dirname(__FILE__) + '/../test_helper'
require 'settings_controller'

class ProjectsControllerTest < ActionController::TestCase
  fixtures :projects, :users

  include Redmine::I18n

  setup do
    @request.session[:user_id] = 1
    Setting.default_language = 'en'

    @project = Project.find 1
    @active_users = User.where(status: User::STATUS_ACTIVE)
  end

  test '' do
    get(:settings, :params => {:id => @project.id})

    assert_select 'select[name=?]', 'project[owner_id]', count: 1 do
      # default empty value
      assert_select 'option[value=""]', count: 1

      # all active users + empty value
      assert_select 'option', count: @active_users.count + 1
    end
  end
end
