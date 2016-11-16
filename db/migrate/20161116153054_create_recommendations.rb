class CreateRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :recommendations do |t|
      t.integer :user_id
      t.integer :recipient_id
      t.integer :book_id
      t.integer :course_id
      t.integer :retreat_id
      t.text :recommendation_message

      t.timestamps
    end
  end
end
