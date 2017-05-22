class CreateAstros < ActiveRecord::Migration[5.0]
  def change
    create_table :astros do |t|
      t.string :punk
      t.string :mango
      t.string :sticker

      t.timestamps
    end
  end
end
