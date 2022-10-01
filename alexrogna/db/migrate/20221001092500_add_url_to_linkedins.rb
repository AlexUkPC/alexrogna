class AddUrlToLinkedins < ActiveRecord::Migration[6.1]
  def change
    add_column :linkedins, :url, :string
  end
end
