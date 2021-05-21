class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :subtitle
      t.string :author
      t.string :publisher
      t.date :dop
      t.string :resources_link
      t.string :github_link

      t.timestamps
    end
  end
end
