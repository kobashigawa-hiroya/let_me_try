class RenameDetetimeToCounters < ActiveRecord::Migration[6.0]
  def change
    rename_column :counters, :detetime, :datetime
  end
end
