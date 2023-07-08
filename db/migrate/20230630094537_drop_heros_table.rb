class DropHerosTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :heros
  end
end
