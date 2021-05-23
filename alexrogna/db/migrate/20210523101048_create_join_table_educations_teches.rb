class CreateJoinTableEducationsTeches < ActiveRecord::Migration[6.1]
  def change
    create_join_table :educations, :teches do |t|
      # t.index [:education_id, :tech_id]
      # t.index [:tech_id, :education_id]
    end
  end
end
