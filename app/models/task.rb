class Task < ApplicationRecord
  belongs_to :project
end

# create_table "tasks", force: :cascade do |t|
#   t.date "start_date"
#   t.date "end_date"
#   t.integer "hours"
#   t.string "name"
#   t.bigint "project_id", null: false
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["project_id"], name: "index_tasks_on_project_id"
# end