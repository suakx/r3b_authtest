class AddIndex < ActiveRecord::Migration
  def self.up
    add_index :users, :perishable_token  
    add_index :users, :email
    add_index :users, :login
    add_index :users, :last_request_at
  end

  def self.down
  end
end
