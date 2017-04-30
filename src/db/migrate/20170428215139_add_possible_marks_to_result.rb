class AddPossibleMarksToResult < ActiveRecord::Migration[5.0]
  def change
    add_column :results, :possible_marks, :integer
  end
end
