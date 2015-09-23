class ChangeColumnStatusTypeToInteger < ActiveRecord::Migration
  def change
    def self.up
      change_table :links do |t|
        t.change :status, :integer, default: 0
      end
    end
    def self.down
      change_table :links do |t|
        t.change :status, :boolean
      end
    end
  end
end
