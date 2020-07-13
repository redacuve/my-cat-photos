class ChangePhotosVotes < ActiveRecord::Migration[6.0]
  def up
    change_table :photos do |t|
      t.change :votes, :integer
    end
  end

  def down
    change_table :products do |t|
      t.change :votes, :float
    end
  end
end
