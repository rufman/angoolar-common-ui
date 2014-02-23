
class DialogController extends angoolar.BaseDirectiveController
	$_name: 'DialogController'

angoolar.Dialog = class Dialog extends angoolar.BaseTemplatedDirective
	$_name: 'Dialog'

	transclude: yes

	controller: DialogController

	scope:
		shown      : '='
		screenClass: '@'
		title      : '@'
		wholeWidth : '=?'

	notIsolated: yes

	constructor: ->
		super
		
		@$body = angular.element 'body'

	link: ( scope, iElement ) ->
		super
		
		iElement.appendTo @$body

		scope.$on '$destroy', -> setTimeout -> iElement.remove()

angoolar.addDirective Dialog