class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :title
      t.integer :time
      t.text :description

      t.timestamps
    end
  end
end
