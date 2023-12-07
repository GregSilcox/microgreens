class Crop < ApplicationRecord
  GramsPerBag = 113.4

  has_many :trays
  has_many :greens, through: :trays

  def total_weight
    trays.sum &:weight
  end

  def number_of_bags
    Integer(total_weight / GramsPerBag)
  end

  def nelsons_bag
    nelson_trays = trays.select{|tray| tray.green.name != 'Radish'}
    nelson_total_weight = nelson_trays.sum &:weight
    nelson_number_of_bags = Integer(nelson_total_weight / GramsPerBag)

    nelson_bag = {}
    nelson_trays.each do |tray|
      key = "#{tray.tray_number} - #{tray.green.name}"
      nelson_bag[key] = tray.weight / nelson_number_of_bags
    end
# There are two trays of Kale
    other_bags = {}
    trays.map do |tray|
      key = "#{tray.tray_number} - #{tray.green.name}"
      remaining_weight = tray.weight - nelson_bag[tray.tray_number].to_i
      other_bags[key] = remaining_weight / number_of_bags
    end

    [nelson_bag, other_bags]
  end
end
