# Programs are useful for repeated computations.
# Let's write a program to calculate the tax on items.

TAX = 0.15

def add_tax value
	return value * (1 + TAX)
end

puts add_tax 100
puts add_tax 75.43
puts add_tax 0


