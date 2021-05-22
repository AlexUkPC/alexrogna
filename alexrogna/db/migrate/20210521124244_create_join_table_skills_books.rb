class CreateJoinTableSkillsBooks < ActiveRecord::Migration[6.1]
  def change
    create_join_table :skills, :books do |t|
      # t.index [:skill_id, :book_id]
      # t.index [:book_id, :skill_id]
    end
  end
end
