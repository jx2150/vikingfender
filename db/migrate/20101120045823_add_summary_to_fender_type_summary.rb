class AddSummaryToFenderTypeSummary < ActiveRecord::Migration
  def self.up
    add_column :fender_type_summaries, :summary, :string
  end

  def self.down
    remove_column :fender_type_summaries, :summary
  end
end