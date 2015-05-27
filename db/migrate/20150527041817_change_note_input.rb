class ChangeNoteInput < ActiveRecord::Migration
  def change
    rename_column :categories, :category_notes, :notes
  end
end
