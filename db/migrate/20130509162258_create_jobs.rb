class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
