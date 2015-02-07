class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :summary
      t.string :time
      t.string :description
      t.string :location
      t.string :maplink
    end
  end
end
