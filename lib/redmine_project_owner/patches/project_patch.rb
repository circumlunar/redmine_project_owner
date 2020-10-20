module RedmineProjectOwner
  module Patches
    module ProjectPatch
      def self.included(base) # :nodoc:
        base.class_eval do
          safe_attributes('owner_id')
        end
      end
    end
  end
end
