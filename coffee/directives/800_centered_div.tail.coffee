
class CenteredDivController extends angoolar.BaseDirectiveController
	$_name: 'CenteredDivController'

class CenteredDiv extends angoolar.BaseTemplatedDirective
	$_name: 'CenteredDiv'

	controller: CenteredDivController

	transclude: yes

	scope:
		wholeWidth: '=?'

	notIsolated: yes

angoolar.addDirective CenteredDiv