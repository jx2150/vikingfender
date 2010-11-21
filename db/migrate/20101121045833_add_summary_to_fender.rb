class AddSummaryToFender < ActiveRecord::Migration
  def self.up
    add_column :fenders, :summary, :string
  end

  def self.down
    remove_column :fenders, :summary
  end
end