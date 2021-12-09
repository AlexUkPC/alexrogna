class AddPresentToEducations < ActiveRecord::Migration[6.1]
  def change
    add_column :educations, :present, :boolean
  end
end
