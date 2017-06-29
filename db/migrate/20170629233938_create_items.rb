class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.boolean :status
      t.references :list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
