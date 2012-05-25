class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :header
      t.text :body
      t.belongs_to :category

      t.timestamps
    end
    add_index :notes, :category_id
  end
end
