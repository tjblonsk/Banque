class AccountsTable < ActiveRecord::Migration
  def up
    create_table :accounts do |t|
      t.integer  :balance, default: 0
    end
  end

  def down
    drop_table :accounts
  end
end
