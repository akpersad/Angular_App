class CreateEmployees < ActiveRecord::Migration[4.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :ssn
      t.integer :salary
      t.string :bundle
      t.string :exec
      t.string :rake
      t.migrate :db

      t.timestamps
    end
  end
end
