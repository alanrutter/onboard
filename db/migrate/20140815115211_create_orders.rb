class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :stripe_user
      t.string :user_id
      t.string :room_id

      t.timestamps
    end
  end
end
