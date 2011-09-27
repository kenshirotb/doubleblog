class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title1
      t.text :content1
      t.string :title2
      t.text :content2
      t.string :globaltitle

      t.timestamps
    end
  end
end
