class CreateForumPosts < ActiveRecord::Migration
  def change
    create_table :forum_posts do |t|
      t.belongs_to :topic, index: true
      t.text :body

      t.timestamps
    end
  end
end
