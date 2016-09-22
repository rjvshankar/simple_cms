class CreateSectionEdits < ActiveRecord::Migration

  def change
    create_table :section_edits do |t|
      t.references :admin_user
      t.references :section
      t.string :summary
      t.timestamps null: false
      t.index [:admin_user_id, :section_id]
      t.index [:section_id, :admin_user_id]
    end
  end

end
