class CreateRevisions < ActiveRecord::Migration[5.1]
  def change
    create_table :revisions do |t|
      t.references :revisionable, polymorphic: true
      t.integer :suggession_id
      t.jsonb :data
      t.text :summary

      t.timestamps
    end
  end
end
