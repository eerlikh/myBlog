class Blogs < ActiveRecord::Migration
  def change
    create_table :blogs do |b|
      b.string :name
      b.string :body
      b.timestamp
    end
  end
end
