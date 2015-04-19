class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :number
      t.belongs_to :room_type, index: true
      t.references :room_status, index: true

      t.timestamps null: false
    end
    add_foreign_key :rooms, :room_types
    add_foreign_key :rooms, :room_statuses
  end
end
