class CreateSuggessions < ActiveRecord::Migration[5.1]
  def change
    create_table :suggessions do |t|
      t.references :user, foreign_key: true
      t.string :suggestible_type
      t.integer :suggestible_id
      t.jsonb :data
      t.text :summary

      t.timestamps
    end
  end
end
