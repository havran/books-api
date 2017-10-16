class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :author, null: false,  index: true
      t.string :title,  null: false,  index: true
      t.string :isbn,   null: false,  index: true, unique: true

      t.timestamps null: false
    end
  end
end
