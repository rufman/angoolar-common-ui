
class BusyShield extends angoolar.BaseTemplatedDirective
	$_name: 'BusyShield'

	transclude: yes

	scope:
		when        : '='
		shieldClass : '='
		spinnerClass: '@'

	scopeDefaults:
		spinnerClass: 'big h1 heavy thick secondary'

angoolar.addDirective BusyShield