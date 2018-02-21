class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.references :user, foreign_key: true
      t.string :token
      t.timestamp :expire_at
      t.timestamp :validity
    end
  end
end
