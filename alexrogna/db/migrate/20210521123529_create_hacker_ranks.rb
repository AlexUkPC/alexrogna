class CreateHackerRanks < ActiveRecord::Migration[6.1]
  def change
    create_table :hacker_ranks do |t|
      t.string :cerificate_name
      t.string :badge_name
      t.string :url

      t.timestamps
    end
  end
end
