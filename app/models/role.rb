class Role < ApplicationRecord
  # A subscriber has an email
  # A member has an email and password
  # A guest may not have either
  ROLES = ["guest", "subscriber", "member", "admin"].freeze

  belongs_to :user
  belongs_to :group

  validates :kind, inclusion: { in: ROLES }
end
