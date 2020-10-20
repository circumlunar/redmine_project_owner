require File.expand_path("../../test_helper", __FILE__)
require 'logger'

class ProjectOwnerTest < ActiveSupport::TestCase
  fixtures :projects, :users

  setup do
    @project = Project.first
  end

  test 'project has an owner_id field' do
    assert @project.safe_attribute_names.include? 'owner_id'
  end

  test 'owner_id is persisted' do
    @project.owner_id = 5

    assert @project.save
  end
end
