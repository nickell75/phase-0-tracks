# Nested data-structures, Grocery List

groceries = {
	meats: {
		steak: ['Tri-Tip', 'Skirt']
		chicken: ['Thighs', 'Breast'], 
		hamburger: ['Patties'],
		}, 
	fruits: {
		apples: []
		}, 
	vegies: [
		'Carrots',
		'Celery',
		'Onions'
		], 
	drinks: {
		beer: {
			corona: 7,
			heineken: 12,
			dos_equis: 2
			},		
		soda: [
			'Coca-Cola',
			'Sprit',
			'Root Beer'
			]
		}, 
	canned: {
		soup: 8,
		peas: 10,
		peachs: 12
	}
}
# Change to upercase nested ARRAY
groceries[:meats][:steak].map(&:upcase)
# Reverse list in nested ARRAY
groceries[:drinks][:soda].reverse
# Return a value in a nested ARRAY
groceries[:vegies][1]
# Find Value at nested HASH
groceries[:drinks][:beer].values_at(:corona)
# Insert string into nested ARRAY
groceries[:fruits][:apples].push("Fuji")