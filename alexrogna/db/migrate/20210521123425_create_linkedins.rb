class CreateLinkedins < ActiveRecord::Migration[6.1]
  def change
    create_table :linkedins do |t|
      t.string :badge_name

      t.timestamps
    end
  end
end
