class AddNullFalseToDoctor < ActiveRecord::Migration[5.1]
  def change
    change_column_null :doctors, :first_name, false
    change_column_null :doctors, :last_name, false
    change_column_null :doctors, :address, false
    change_column_null :doctors, :gender, false
  end
end
