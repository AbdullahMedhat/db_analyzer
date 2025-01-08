class TableInsights < ActiveRecord::Migration[8.0]
  def change
    create_table :table_insights do |t|
      t.string  :name, null: false
      t.integer :size, default: 0, null: false
    end
  end
end
