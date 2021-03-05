class AddNameAndUndergraduateAndGradeToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :undergraduate, :string, null: false
    add_column :users, :grade, :integer, null: false, default: 0
  end
end
