class Donation < ApplicationRecord
  KINDS = [:check, :card, :cash].freeze

  validates :kind, inclusion: { in: KINDS }
  validates :amount, numericality: { greater_than: 0.00 }

  # Since the donation may occur separately from the entry being created,
  # this probably shouldn't be a callback.
  # before_create -> { self.donated_at = Time.current }
end
