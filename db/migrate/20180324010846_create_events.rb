class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.datetime :datetime
      t.integer :member
      t.text :place
      t.string :part
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end
end
