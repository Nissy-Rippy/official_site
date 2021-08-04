class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videose do |t|
      t.string :title
      t.text :introduction
      t.string :user_id

      t.timestamps
    end
  end
end
