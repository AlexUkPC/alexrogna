class CreateSocialIcons < ActiveRecord::Migration[6.1]
  def change
    create_table :social_icons do |t|
      t.string :icon
      t.string :link
      t.integer :order_id

      t.timestamps
    end
  end
end
