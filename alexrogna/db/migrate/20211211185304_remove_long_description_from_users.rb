class RemoveLongDescriptionFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :long_description, :string
  end
end
