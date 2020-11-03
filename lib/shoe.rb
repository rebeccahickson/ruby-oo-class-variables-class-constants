class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  # rubocop:disable Style/MutableConstant
  BRANDS = []
  # rubocop:enable Style/MutableConstant
  def initialize(brand)
    @brand = brand
    BRANDS << brand unless BRANDS.include?(brand)
  end

  def cobble
    self.condition = 'new'
    puts 'Your shoe is as good as new!'
  end
end
