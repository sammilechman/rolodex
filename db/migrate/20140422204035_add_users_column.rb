class AddUsersColumn < ActiveRecord::Migration
  def change
    remove_column :users, :name

    add_column :users, :username, :string, {:null => false, :uniq => true, default: ""}
  end
end
