class CreateForumTopics < ActiveRecord::Migration
  def change
    create_table :forum_topics do |t|
      t.belongs_to :category, index: true
      t.string :title

      t.timestamps
    end
  end
end
