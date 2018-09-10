class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :today
      t.string :this_week
      t.string :asap

      t.timestamps
    end
  end
end
