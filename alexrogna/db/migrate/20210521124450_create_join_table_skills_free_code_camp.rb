class CreateJoinTableSkillsFreeCodeCamp < ActiveRecord::Migration[6.1]
  def change
    create_join_table :skills, :free_code_camps do |t|
      # t.index [:skill_id, :free_code_camp_id]
      # t.index [:free_code_camp_id, :skill_id]
    end
  end
end
