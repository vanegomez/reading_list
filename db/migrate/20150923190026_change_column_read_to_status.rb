class ChangeColumnReadToStatus < ActiveRecord::Migration
  def change
    rename_column :links, :read, :status
  end
end
