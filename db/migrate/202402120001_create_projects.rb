class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.string :status, default: 'pending'
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
