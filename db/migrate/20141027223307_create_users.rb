class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
      t.string :s_hash
      t.integer :s_id

      t.timestamps
    end
  end
end
