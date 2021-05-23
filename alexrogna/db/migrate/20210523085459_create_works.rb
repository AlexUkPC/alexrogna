class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.string :company
      t.string :position
      t.date :start_date
      t.date :end_date
      t.boolean :present

      t.timestamps
    end
  end
end
