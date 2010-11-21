class CreateFenderTypeSummaries < ActiveRecord::Migration
  def self.up
    create_table :fender_type_summaries do |t|
      t.string :fender_type

      t.timestamps
    end
  end

  def self.down
    drop_table :fender_type_summaries
  end
end
