module RedmineProjectOwner
  def self.setup
    require_dependency 'project'

    Project.send(:include, RedmineProjectOwner::Patches::ProjectPatch)
  end
end
