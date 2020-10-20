module RedmineProjectOwner
  module HooksHelper
    def active_users
      User.select{|user| user.status == User::STATUS_ACTIVE }.map{|user| [user.id, "#{user.firstname user.lastname}"]}
    end
  end
end
