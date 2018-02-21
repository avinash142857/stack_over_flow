class CreateRecomendations < ActiveRecord::Migration[5.1]
  def change
    create_table :recomendations do |t|
      t.references :question, foreign_key: true
      t.integer :recomendation_question_id

      t.timestamps
    end
  end
end
