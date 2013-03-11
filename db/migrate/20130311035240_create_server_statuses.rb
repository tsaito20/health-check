class CreateServerStatuses < ActiveRecord::Migration
  def change
    create_table :server_statuses do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
