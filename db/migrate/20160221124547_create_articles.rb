class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.string :lead_image
      t.string :caption
      t.timestamps
    end
  end
end
