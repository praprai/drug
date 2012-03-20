class CreateDrugcodes < ActiveRecord::Migration
  def change
    create_table :drugcodes do |t|
      t.string :regno
      t.string :tradename
      t.string :dgdsfnm
      t.string :drugname
      t.string :strength
      t.string :std_code
    end
  end
end
