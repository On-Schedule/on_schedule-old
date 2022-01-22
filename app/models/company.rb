class Company < ApplicationRecord
  has_many :users
  has_many :projects
end

# create_table "companies", force: :cascade do |t|
#   t.string "name"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end
