class AddNameAndInitialsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :initials, :string, null: false
  end
end
