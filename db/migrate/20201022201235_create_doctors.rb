class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :full_name
      t.string :full_address

      t.timestamps
    end
  end
end
