class CreateChirps < ActiveRecord::Migration[5.0]
  def change
    create_table :chirps do |t|
      t.text :body
      t.string :author

      t.timestamps
    end
  end
end
