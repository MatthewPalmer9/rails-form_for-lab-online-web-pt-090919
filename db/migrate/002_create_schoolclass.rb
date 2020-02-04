class CreateSchoolClass < ActiveRecord::Migration
  def change
    create_table :schoolclasses do |t|
      t.string :title
      t.integer :room_number

      t.timestamps 
    end
  end
end
