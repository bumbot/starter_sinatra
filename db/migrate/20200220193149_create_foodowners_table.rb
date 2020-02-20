class CreateFoodownersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :foodowners do |t|
      t.integer :employee_id
      t.integer :food_id
      t.string :snippet
    end
  end
end
