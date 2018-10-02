class CreateTheatres < ActiveRecord::Migration[5.2]
  def change
    create_table :theatres do |t|
      t.string :theatre_id
      t.string :name
      t.string :address
      t.string :phone_no

      t.timestamps
    end
  end
end
