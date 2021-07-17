class CreatePersonalSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :personal_skills do |t|
      t.string :skill
      t.string :icon
      t.text :description
      t.integer :order_id

      t.timestamps
    end
  end
end
