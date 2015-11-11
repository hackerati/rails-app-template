class CreatePageLoads < ActiveRecord::Migration
  def change
    create_table :page_loads do |t|
      t.datetime :datetime_stamp

      t.timestamps null: false
    end
  end
end
