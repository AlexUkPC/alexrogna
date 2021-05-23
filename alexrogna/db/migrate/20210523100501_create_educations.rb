class CreateEducations < ActiveRecord::Migration[6.1]
  def change
    create_table :educations do |t|
      t.string :school
      t.string :location
      t.date :start_date
      t.date :end_date
      t.text :specialization

      t.timestamps
    end
  end
end
