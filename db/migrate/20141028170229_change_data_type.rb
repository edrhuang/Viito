class ChangeDataType < ActiveRecord::Migration
  def change
  	change_column :users, :s_hash, :text
  end
end
