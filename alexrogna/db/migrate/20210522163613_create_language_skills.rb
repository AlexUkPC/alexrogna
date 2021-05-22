class CreateLanguageSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :language_skills do |t|
      t.string :language
      t.string :certificate_name
      t.string :certificate_url
      t.boolean :is_native
      t.integer :procent

      t.timestamps
    end
  end
end
