class CreateFenders < ActiveRecord::Migration
  def self.up
    create_table :fenders do |t|
      t.string :fender_type
      t.text :name
      t.text :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :fenders
  end
end
