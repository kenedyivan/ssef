class Remove < ActiveRecord::Migration
  def change
    remove_column('articles','caption',:string)
  end
end
