


class AddPostRefToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :post, foreign_key: true
  end
end

20211216141502_add_post_ref_to_comments.rb