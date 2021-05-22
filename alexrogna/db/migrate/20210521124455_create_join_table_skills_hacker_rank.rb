class CreateJoinTableSkillsHackerRank < ActiveRecord::Migration[6.1]
  def change
    create_join_table :skills, :hacker_ranks do |t|
      # t.index [:skill_id, :hacker_rank_id]
      # t.index [:hacker_rank_id, :skill_id]
    end
  end
end
