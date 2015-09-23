class ChangeColumnStatusType < ActiveRecord::Migration
  def self.up
    change_table :links do |t|
      t.change :status, :boolean
    end
  end
  def self.down
    change_table :links do |t|
      t.change :status, :integer, default: 0
    end
  end
end
