class CreateMedals < ActiveRecord::Migration
  def change
    create_table :medals do |t|
      t.string 			:name
      t.string 			:medal_id
      t.integer 		:difficulty
      t.text				:spriteLocation

      t.timestamps 	null: false
    end
  end
end
