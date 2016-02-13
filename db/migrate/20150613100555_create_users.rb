class CreateUsers < ActiveRecord::Migration
  ###############################################
  #                                             #
  #     Do NOT change the password schema.      #
  #                                             #
  ###############################################
  def change
    create_table :users do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :email, :null => false
      t.string :password_hash, :null => false
      t.timestamps
    end
    add_index :users, :email, :unique => true
  end
end
