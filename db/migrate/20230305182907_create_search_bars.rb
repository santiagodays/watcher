class CreateSearchBars < ActiveRecord::Migration[7.0]
  def change
    create_table :search_bars do |t|

      t.timestamps
    end
  end
end
