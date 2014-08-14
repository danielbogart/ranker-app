class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.decimal :price
      t.decimal :happiness
      t.decimal :happines_index

      t.timestamps
    end
  end
end
