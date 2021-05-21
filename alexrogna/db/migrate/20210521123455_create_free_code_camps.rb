class CreateFreeCodeCamps < ActiveRecord::Migration[6.1]
  def change
    create_table :free_code_camps do |t|
      t.string :cerificate_name
      t.string :url

      t.timestamps
    end
  end
end
