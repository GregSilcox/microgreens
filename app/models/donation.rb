class Donation < ApplicationRecord
  KINDS = [:check, :card, :cash].freeze
  validate :kind, in: KINDS
  validate :amount, gt: 0.00

  before_create { |d| d.datetime = Time.now }
end
