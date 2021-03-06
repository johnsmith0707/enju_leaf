class CreateSubjectHeadingTypeHasSubjects < ActiveRecord::Migration
  def change
    create_table :subject_heading_type_has_subjects do |t|
      t.integer :subject_id, :null => false
      t.string :subject_type
      t.integer :subject_heading_type_id, :null => false

      t.timestamps
    end
    add_index :subject_heading_type_has_subjects, :subject_id
  end
end
