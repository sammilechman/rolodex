class ChangeCommentsColumns < ActiveRecord::Migration
  def change
    remove_column :comments, :user_id
    remove_column :comments, :contact_id
    add_column :comments, :object_id, :interger
    add_column :comments, :object_type, :string
  end
end
