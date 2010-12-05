class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :title
      t.string :description
      t.string :image

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
