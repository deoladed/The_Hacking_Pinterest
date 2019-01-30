class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :url
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
