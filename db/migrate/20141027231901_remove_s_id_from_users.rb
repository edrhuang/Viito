class RemoveSIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :s_id, :integer
  end
end
