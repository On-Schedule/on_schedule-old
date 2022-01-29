class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company
  has_many :project_users
  has_many :projects, through: :project_users
end

  # create_table "users", force: :cascade do |t|
  #   t.string "first_name"
  #   t.string "last_name"
  #   t.string "email"
  #   t.bigint "company_id", null: false
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  #   t.index ["company_id"], name: "index_users_on_company_id"
  # end
