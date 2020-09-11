class AddUserReference < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :user,
    add_column :users, :email, :string
  end
end
