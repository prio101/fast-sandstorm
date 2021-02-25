class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.string  :name
      t.string  :link
      t.integer  :status
      t.string  :site_name
      t.reference :user_id
      t.timestamps
    end
  end
end
