class ProjectUser < ApplicationRecord
  belongs_to :user
  belongs_to :project
end

# create_table "project_users", force: :cascade do |t|
#   t.string "user_level"
#   t.bigint "user_id", null: false
#   t.bigint "project_id", null: false
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["project_id"], name: "index_project_users_on_project_id"
#   t.index ["user_id"], name: "index_project_users_on_user_id"
# end
