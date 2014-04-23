class AddColumnContactId < ActiveRecord::Migration
  def change
    remove_column :comments, :user_id
    add_column :comments, :user_id, :integer
    add_column :comments, :contact_id, :integer
    add_index :comments, :user_id
    add_index :comments, :contact_id
    remove_column :comments, :author_id
    add_column :comments, :author_id, :integer, null: false, default: 0

  end
end
