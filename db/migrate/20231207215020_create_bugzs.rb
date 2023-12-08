class CreateBugzs < ActiveRecord::Migration[7.1]
  def change
    create_table :bugzs do |t|
      t.string :title
      t.date :deadline
      t.string :b_type
      t.string :status
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
