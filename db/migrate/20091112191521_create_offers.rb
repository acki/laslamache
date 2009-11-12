class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.decimal :price
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
