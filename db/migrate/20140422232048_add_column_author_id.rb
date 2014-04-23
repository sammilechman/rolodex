class AddColumnAuthorId < ActiveRecord::Migration
  def change
    add_column :comments, :author_id, :integer
    remove_column :comments, :contact_id
  end
end
