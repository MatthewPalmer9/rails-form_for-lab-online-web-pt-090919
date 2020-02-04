class CreateSchoolClass < ActiveRecord::Migration
  def change
    create_table :schoolclasses do |t|
      t.string :title
      
    end
  end
end
