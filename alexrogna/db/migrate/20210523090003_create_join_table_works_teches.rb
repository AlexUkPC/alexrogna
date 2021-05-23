class CreateJoinTableWorksTeches < ActiveRecord::Migration[6.1]
  def change
    create_join_table :works, :teches do |t|
      # t.index [:work_id, :tech_id]
      # t.index [:tech_id, :work_id]
    end
  end
end
