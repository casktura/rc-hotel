class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.belongs_to :customer, index: true
      t.integer :guest_amount
      t.integer :night_amount
      t.integer :room_amount
      t.references :reserve_status, index: true
      t.date :booking_date
      t.date :check_in_date
      t.time :check_in_time
      t.date :check_out_date
      t.time :check_out_time
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :reserves, :customers
    add_foreign_key :reserves, :reserve_statuses
    add_foreign_key :reserves, :users
  end
end
