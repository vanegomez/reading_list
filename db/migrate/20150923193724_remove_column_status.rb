class RemoveColumnStatus < ActiveRecord::Migration
  def change
    remove_column :links, :status
  end
end
