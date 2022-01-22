FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
    company
  end
end

# create_table "users", force: :cascade do |t|
#   t.string "first_name"
#   t.string "last_name"
#   t.bigint "company_id", null: false
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.string "email", default: "", null: false
#   t.string "encrypted_password", default: "", null: false
#   t.string "reset_password_token"
#   t.datetime "reset_password_sent_at"
#   t.datetime "remember_created_at"
#   t.integer "sign_in_count", default: 0, null: false
#   t.datetime "current_sign_in_at"
#   t.datetime "last_sign_in_at"
#   t.string "current_sign_in_ip"
#   t.string "last_sign_in_ip"
#   t.string "confirmation_token"
#   t.datetime "confirmed_at"
#   t.datetime "confirmation_sent_at"
#   t.string "unconfirmed_email"
#   t.integer "failed_attempts", default: 0, null: false
#   t.string "unlock_token"
#   t.datetime "locked_at"
#   t.index ["company_id"], name: "index_users_on_company_id"
#   t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
#   t.index ["email"], name: "index_users_on_email", unique: true
#   t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
#   t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
# end