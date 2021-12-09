class AddShowOnCvToEducations < ActiveRecord::Migration[6.1]
  def change
    add_column :educations, :show_on_cv, :boolean, default: true
  end
end
