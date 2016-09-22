class CreateJoinTableAdminUserProduct < ActiveRecord::Migration
  def change
    create_join_table :admin_users, :pages do |t|
      t.index [:admin_user_id, :page_id]
      t.index [:page_id, :admin_user_id]
    end
  end
end
