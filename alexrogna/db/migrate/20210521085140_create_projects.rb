class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :github_url
      t.string :docker_url

      t.timestamps
    end
  end
end
