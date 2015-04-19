class CreateReserveStatuses < ActiveRecord::Migration
  def change
    create_table :reserve_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
