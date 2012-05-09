class CreateAsses < ActiveRecord::Migration
  def change
    create_table :asses do |t|
      t.string :name

      t.timestamps
    end
  end
end
