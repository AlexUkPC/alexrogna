class AddShowOnCvToSocialIcons < ActiveRecord::Migration[6.1]
  def change
    add_column :social_icons, :show_on_cv, :boolean, default: true
  end
end
