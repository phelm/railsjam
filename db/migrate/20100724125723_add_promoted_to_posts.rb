class AddPromotedToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :promoted, :boolean
  end

  def self.down
    remove_column :posts, :promoted
  end
end
