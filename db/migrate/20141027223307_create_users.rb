class CreateUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :s_id
  end
end
