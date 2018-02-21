class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :body
      t.integer :accepted_answer_id
      t.integer :views
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
