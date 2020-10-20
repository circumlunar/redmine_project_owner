class AddProjectsOwner < ActiveRecord::Migration[5.2]
  def self.up
    add_column :projects, :owner_id, :string
  end

  def self.down
    remove_column :projects, :owner_id
  end
end
