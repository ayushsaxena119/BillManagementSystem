class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :event, index: true, foreign_key: true
      t.string :name
      t.float :amount

      t.timestamps null: false
    end
  end
end
