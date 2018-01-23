class CreateTimesheets < ActiveRecord::Migration[5.1]
  def up
    create_table :timesheets do |t|
      t.integer 'user_id'
      t.string  'week_number'
      t.date    'date'
      t.integer 'hour', default:0
      t.timestamps
    end
    add_index 'timesheets','week_number'
  end

  def down
    drop_table :timesheets

  end
end
