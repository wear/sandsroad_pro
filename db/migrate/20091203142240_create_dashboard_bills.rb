class CreateDashboardBills < ActiveRecord::Migration
  def self.up
    create_table :dashboard_bills do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :dashboard_bills
  end
end
