class AddUserIdToRapidfireQuestionGroups < ActiveRecord::Migration
  def change
    add_column :rapidfire_question_groups, :user_id, :integer
  end
end
