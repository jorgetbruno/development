class ChangeIntegerLimitInUser < ActiveRecord::Migration
  def change
    change_column :users, :phoneOne, :integer, limit: 8
    change_column :users, :phoneTwo, :integer, limit: 8
    change_column :users, :phoneThree, :integer, limit: 8
    change_column :users, :cpf, :integer, limit: 8
    change_column :users, :rg, :integer, limit: 8
  end
end
