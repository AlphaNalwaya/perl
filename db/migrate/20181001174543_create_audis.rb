class CreateAudis < ActiveRecord::Migration[5.2]
  def change
    create_table :audis do |t|
      t.string :a_id
      t.string :seat

      t.timestamps
    end
  end
end
