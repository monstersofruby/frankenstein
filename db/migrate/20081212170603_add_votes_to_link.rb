class AddVotesToLink < ActiveRecord::Migration
  def self.up
    add_column :links, :votes, :integer, :default => 0
  end

  def self.down
    remove_column :links, :votes
  end
end
