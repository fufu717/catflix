class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.text :title,          null: false
      t.text :text,             null: false
      t.references :user,   foreign_key: true
      t.references :cat,    fereign_key: true
      t.timestamps
    end
  end
end
