class CreateChoochoos < ActiveRecord::Migration
  def change
    create_table :choochoos do |t|
      t.string :name
      t.integer :frequency

      t.timestamps
    end
  end
end
