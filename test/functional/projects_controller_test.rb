require File.dirname(__FILE__) + '/../test_helper'

class ProjectsControllerTest < ActionController::TestCase
  fixtures :projects, :users

  include Redmine::I18n

  setup do
    @request.session[:user_id] = 1
    Setting.default_language = 'en'
  end

  test 'project settings page has an owner dropdown with active users' do
    project = Project.find 1

    get(:settings, :params => {:id => project.id})

    # label
    assert_select 'label[for=?]', 'project_owner_id', html: l(:label_owner), count: 1

    # dropdown
    assert_select 'select[name=?]', 'project[owner_id]', count: 1 do
      # default empty value
      assert_select 'option[value=""]', count: 1

      # all active users + empty value
      assert_select 'option', count: User.where(status: User::STATUS_ACTIVE).count + 1
    end
  end

  test 'correct value in dropdown is selected when project has an owner' do
    owner_id = 2
    project = Project.find 2
    project.update(owner_id: owner_id)

    get(:settings, :params => {:id => project.id})

    # dropdown
    assert_select 'select[name=?]', 'project[owner_id]', count: 1 do
      # default empty value
      assert_select "option[value=\"#{owner_id}\"][selected=selected]", count: 1
    end
  end
end
