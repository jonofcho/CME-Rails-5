class AddParamsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :text
    add_column :users, :last_name, :text
    add_column :users, :date_of_birth, :date
  end
end
