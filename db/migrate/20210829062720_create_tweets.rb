class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.references :user,foreign_key: true, optional: true
      t.references :admin,foreign_key: true, optional: true
      t.text :text

      t.timestamps
    end
  end
end
