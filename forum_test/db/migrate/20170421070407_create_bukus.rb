class CreateBukus < ActiveRecord::Migration[5.0]
  def change
    create_table :bukus do |t|
      t.string :judul
      t.string :pengarang
      t.string :penerbit
      t.string :tahun
      t.string :harga

      t.timestamps
    end
  end
end
