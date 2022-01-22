class Project < ApplicationRecord
  belongs_to :company
  has_many :project_users
  has_many :users, through: :project_users
  has_many :tasks
end

# create_table "projects", force: :cascade do |t|
#   t.date "start_date"
#   t.date "end_date"
#   t.string "name"
#   t.integer "hours_per_day"
#   t.bigint "company_id", null: false
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["company_id"], name: "index_projects_on_company_id"
# end
