class DropFenderTypeSummaries < ActiveRecord::Migration
  def self.up
    drop_table :fender_type_summaries
  end

  def self.down
    create_table :fender_type_summaries do |t|
      t.string :fender_type

      t.timestamps
    end
  end
end
