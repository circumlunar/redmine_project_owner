module ApplicationHelper
  def active_users
    User.select{|user| user.status == User::STATUS_ACTIVE }
      .map{|user| ["#{user.firstname} #{user.lastname}", user.id]}
  end
end
