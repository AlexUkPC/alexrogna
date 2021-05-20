class AddfieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :salute, :string
    add_column :users, :short_description, :text
    add_column :users, :long_description, :text
    add_column :users, :name, :text
    add_column :users, :street_number, :text
    add_column :users, :street_name, :text
    add_column :users, :city, :text
    add_column :users, :post_code, :text
    add_column :users, :phone, :text
  end
end
