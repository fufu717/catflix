class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name,           null: false
      t.references :user,       foreign_key: true
      t.integer :cat_type_id,   null: false
      t.date :birth_day
      t.timestamps
    end
  end
end
