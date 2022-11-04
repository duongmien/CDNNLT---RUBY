class CreateBookmanages < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmanages do |t|
      t.integer :stt
      t.string :maHS
      t.string :lop
      t.string :maSach
      t.string :tenSach
      t.string :tenTacGia
      t.string :ngayMuon
      t.string :ngayTra
      t.string :soNgay
      t.string :ghiChu

      t.timestamps
    end
  end
end
