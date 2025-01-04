class SampleTables < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text   :decription

      t.timestamps
    end

    create_table :comments do |t|
      t.integer :post_id
      t.text    :body

      t.timestamps
    end
  end
end
