# the concret component we would like to decorate, a product in our example
class BasicProduct
	def initialize(cost, sku, type)
		@cost = cost
		@sku = sku
		@type = type
		@description = "basic Product"
	end
	
	# getter method
	def cost
		return @cost
	end
	
	def details
		return @description + "; " + @sku + "; " + @type + ": #{@cost}"
	end	
end

# decorator class -- this serves as the superclass for all the concrete decorators
# the base/super class decorator (i.e. no actual decoration yet), each concrete decorator (i.e. subclass) will add its own decoration
class ProductDecorator
	def initialize(real_product)
		@real_product = real_product
		@extra_cost = 0
		puts "here in super after #{@extra_cost}"
		@feature = "no extra feature"
	end

    # override the cost method to include the cost of the extra feature	
	def cost
		return @extra_cost + @real_product.cost
	end
	
	# override the details method to include the description of the extra feature
	def details
		return @feature + ". " + @real_product.details
	end
	
end


# a concrete decorator
class BodyLotion < ProductDecorator
	def initialize(real_product)
		super(real_product)
		@feature = "After sun Bath Body Lotion for sunburns with aloe vera extract"
		@extra_cost = 70
		@type="After Sun Bath"
	end
	
	# override the details method to include the description of the extra feature and its corresponding price
	def details
		return @feature + ": #{@extra_cost} + " + @real_product.details  
	end	
end

class BodyLotionMoisturizer< ProductDecorator
	def initialize(real_product)
		super(real_product)
		@feature = "For Moisturizing your skin with burns and dry skin"
		@extra_cost = 30
		@type="For Soft Skin"
	end
	
	# override the details method to include the description of the extra feature and its corresponding price
	def details
		return @feature + ": #{@extra_cost} + " + @real_product.details  
	end	
end

# another concrete decorator
class Soap < ProductDecorator
	def initialize(real_product)
		super(real_product)
		@feature = "mositure rich "
		@extra_cost = 20
	end
	
	# override the details method to include the description of the extra feature and its corresponding price
	def details
		return @feature + ": #{@extra_cost} + " + @real_product.details  
	end	
end

# another concrete decorator
class Facewash < ProductDecorator
	def initialize(real_product)
		super(real_product)
		@feature = "Clear Soft Skin"
		@extra_cost = 60
	end
	
	# override the details method to include the description of the extra feature and its corresponding price
	def details
		return @feature + ": #{@extra_cost} + " + @real_product.details  
	end	
end

# another concrete decorator
class Lipbalm < ProductDecorator
	def initialize(real_product)
		super(real_product)
		@feature = "For Dry Lips"
		@extra_cost = 10
	end
	
	# override the details method to include the description of the extra feature and its corresponding price
	def details
		return @feature + ": #{@extra_cost} + " + @real_product.details  
	end	
end
