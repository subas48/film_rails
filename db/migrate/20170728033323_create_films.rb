class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :Title
      t.integer :Year
      t.integer :Time
      t.integer :Cast
      t.float :Rating
      t.string :Description
      t.integer :Origin
      t.string :Time_code
      t.integer :Good

      t.timestamps
    end
  end
end
