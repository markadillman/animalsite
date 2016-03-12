class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
  end
end
