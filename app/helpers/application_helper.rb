module ApplicationHelper
  def active_users
    User.where(status: User::STATUS_ACTIVE).map{|user| ["#{user.firstname} #{user.lastname}", user.id]}
  end
end
