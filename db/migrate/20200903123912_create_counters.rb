class CreateCounters < ActiveRecord::Migration[6.0]
  def change
    create_table :counters do |t|
      t.datetime :detetime

      t.timestamps
    end
  end
end
