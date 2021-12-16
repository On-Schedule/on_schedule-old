class User < ApplicationRecord
  belongs_to :company
  has_many :project_users
  has_many :projects, through: :project_users
end
