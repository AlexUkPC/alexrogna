class AddNameToSocialIcons < ActiveRecord::Migration[6.1]
  def change
    add_column :social_icons, :name, :string
  end
end
