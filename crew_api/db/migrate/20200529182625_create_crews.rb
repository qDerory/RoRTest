class CreateCrews < ActiveRecord::Migration[5.2]
  def change
    create_table :crews, id: :integer do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :user_name

      t.timestamps
    end
  end
end
