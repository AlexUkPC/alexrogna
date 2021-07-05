class AddHiddenToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :hidden, :boolean
  end
end
