class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :create
      t.string :new
      t.string :destroy

      t.timestamps
    end
  end
end
