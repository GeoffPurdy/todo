class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :list, index: true
      t.string :title
      t.text :notes
      t.date :due
      t.boolean :is_complete

      t.timestamps
    end
  end
end
