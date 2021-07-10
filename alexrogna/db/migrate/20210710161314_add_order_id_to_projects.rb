class AddOrderIdToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :order_id, :integer
  end
end
