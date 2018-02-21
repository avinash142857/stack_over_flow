class CreateFlags < ActiveRecord::Migration[5.1]
  def change
    create_table :flags do |t|
      t.references :user, foreign_key: true
      t.references :flagable, polymorphic: true
      t.text :reason

      t.timestamps
    end
  end
end
