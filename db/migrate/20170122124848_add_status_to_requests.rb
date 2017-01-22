class AddStatusToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :state_id, :integer, default: ReferenceConstant::StatusRequestConst::WAITING_FOR_EVALUATION
  end
end
