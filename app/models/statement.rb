# The statement prepares information,
# it has no database table.
class Statement
  attr_reader :user

  def initialize user=nil
    @user = user || User.new( email: "a@b.c" )
  end

  def donations
    donation = @user.donations.order(:donated_at).first
    amount = sprintf("$%.2f", donation.amount)
    date = donation.donated_at.strftime("%d/%m/%Y")
    "You made a donation of #{ amount } on #{ date }"
  end

  def orders
    @user.orders.order(:created_at).first.line_items.map do |li|
      li.product.title
    end
  end
end
