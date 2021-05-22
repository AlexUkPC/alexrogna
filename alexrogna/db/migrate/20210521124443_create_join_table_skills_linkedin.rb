class CreateJoinTableSkillsLinkedin < ActiveRecord::Migration[6.1]
  def change
    create_join_table :skills, :linkedins do |t|
      # t.index [:skill_id, :linkedin_id]
      # t.index [:linkedin_id, :skill_id]
    end
  end
end
