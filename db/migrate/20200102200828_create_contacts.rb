class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.date :lastmeet
      t.integer :frequency
      t.boolean :warning

      t.timestamps
    end
  end
end
