
angoolar.FixedProportionDiv = class FixedProportionDiv extends angoolar.BaseTemplatedDirective
	$_name: 'FixedProportionDiv'

	transclude: yes

	scope:
		ratioWidth : '@'
		ratioHeight: '@'
		scrollable:  '@'

	scopeDefaults:
		ratioWidth : 4
		ratioHeight: 3
		scrollable : no

angoolar.addDirective FixedProportionDiv