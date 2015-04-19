class CreateRoomTypes < ActiveRecord::Migration
  def change
    create_table :room_types do |t|
      t.string :name
      t.decimal :cost, precision: 7, scale: 2

      t.timestamps null: false
    end
  end
end
