class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :salt
      t.string :encrypted_password
      t.integer :reputation_score

      t.timestamps
    end
  end
end
