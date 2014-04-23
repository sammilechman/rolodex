class AddingBoolstocontacts < ActiveRecord::Migration
  def change
    add_column :contacts, :liked, :boolean, default: false
  end
end
