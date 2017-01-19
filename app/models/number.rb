class Number
  include ActiveModel::Model

  attr_accessor :value

  validates :value, numericality: { only_integer: true, :greater_than_or_equal_to => 0}

end
