class CreateJoinTableTagsSkills < ActiveRecord::Migration[6.1]
  def change
    create_join_table :tags, :skills do |t|
      # t.index [:tag_id, :skill_id]
      # t.index [:skill_id, :tag_id]
    end
  end
end
