class CreateLaptops < ActiveRecord::Migration
  def change
    create_table :laptops do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
