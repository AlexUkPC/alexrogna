class AddOrderIdToSocialIcons < ActiveRecord::Migration[6.1]
  def change
    add_column :social_icons, :order_id, :integer
  end
end
