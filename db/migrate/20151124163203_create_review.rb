class CreateReview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :title
      t.text :description
      t.timestamps
    end
  end
end
