class AddOrderIdToSkills < ActiveRecord::Migration[6.1]
  def change
    add_column :skills, :order_id, :integer
  end
end
