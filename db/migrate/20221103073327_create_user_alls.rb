class CreateUserAlls < ActiveRecord::Migration[7.0]
  def change
    create_table :user_alls do |t|
      t.string :name
      t.string :last_name
      t.string :address
      t.string :contact_no
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
