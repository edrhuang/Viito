class AddDataType < ActiveRecord::Migration
  def change
  	add_column :users, :s_hash, :text
  end
end
