class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.text :title
      t.text :description
      t.float :votes
      t.string :image

      t.timestamps
    end
  end
end
