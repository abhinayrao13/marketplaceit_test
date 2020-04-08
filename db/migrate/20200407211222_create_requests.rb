class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :meeting_id
      t.integer :user_id
      t.integer :status, default: 0
    end
  end
end
