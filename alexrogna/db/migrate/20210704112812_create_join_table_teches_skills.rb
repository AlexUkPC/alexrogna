class CreateJoinTableTechesSkills < ActiveRecord::Migration[6.1]
  def change
    create_join_table :teches, :skills do |t|
      # t.index [:tech_id, :skill_id]
      # t.index [:skill_id, :tech_id]
    end
  end
end
