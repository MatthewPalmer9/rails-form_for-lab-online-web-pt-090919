class CreateSchoolClass < ActiveRecord::Migration
  def change
    create_table :schoolclasses do |t|
      t.string 
    end
  end
end
