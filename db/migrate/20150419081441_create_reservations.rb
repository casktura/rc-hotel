class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.belongs_to :reserf, index: true
      t.references :room, index: true
      t.integer :optional_bed
      t.decimal :optional_bed_cost, precision: 7, scale: 2
      t.decimal :total_cost, precision: 7, scale: 2

      t.timestamps null: false
    end
    add_foreign_key :reservations, :reserves
    add_foreign_key :reservations, :rooms
  end
end
