class CreateForm1s < ActiveRecord::Migration
  def change
    create_table :form1s do |t|
      t.string :name
      t.string :email
      t.integer :mobileno
      t.string :message

      t.timestamps
    end
  end
end
