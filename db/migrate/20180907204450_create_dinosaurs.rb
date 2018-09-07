class CreateDinosaurs < ActiveRecord::Migration[5.2]
  def change
    create_table :dinosaurs do |t|
      t.string :height
      t.string :weight
      t.boolean :sharptooth

      t.timestamps
    end
  end
end
