class CreateReactors < ActiveRecord::Migration[6.1]
  def change
    create_table :reactors do |t|
      t.string :url
      t.string :lastModified
      t.boolean :foaming, :default => false
      t.boolean :tagged, :default => false

      t.timestamps
    end
  end
end
