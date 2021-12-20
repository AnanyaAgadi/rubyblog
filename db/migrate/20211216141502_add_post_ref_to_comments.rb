class AddingForcefullyMissingFieldToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :rating, :integer
  end
end


20211216141502_add_post_ref_to_comments.rb