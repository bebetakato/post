class AddPostIdToComments < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM comments;'
    add_reference :comments, :post, null: false, index: true
  end

  def down
    remove_reference :comments, :post, index: true
  end
  
end
