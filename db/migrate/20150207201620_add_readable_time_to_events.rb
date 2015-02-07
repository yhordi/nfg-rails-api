class AddReadableTimeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :readable_time, :string
  end
end
