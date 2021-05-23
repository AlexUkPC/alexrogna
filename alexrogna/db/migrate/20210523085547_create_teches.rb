class CreateTeches < ActiveRecord::Migration[6.1]
  def change
    create_table :teches do |t|
      t.string :name
      t.integer :order_id

      t.timestamps
    end
  end
end
