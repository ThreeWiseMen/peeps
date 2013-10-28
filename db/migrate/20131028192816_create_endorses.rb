class CreateEndorses < ActiveRecord::Migration
  def change
    create_table :endorses do |t|
      t.integer :endorsee_id
      t.integer :endorsor_id
      t.integer :level

      t.timestamps
    end
  end
end
