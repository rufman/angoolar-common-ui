
class IndependentlyScrollableContainerController extends angoolar.BaseDirectiveController
	$_name: 'IndependentlyScrollableContainerController'

	constructor: ->
		super

		# @$headerElement = @$element.

	transcludeNotScrollableContent: ( notScrollableTransclude ) ->

	transcludeScrollableContent: ( scrollableTransclude ) ->

class IndependentlyScrollableContainer extends angoolar.BaseDirective
	$_name: 'IndependentlyScrollableContainer'

	# templateUrl: 'independently-scrollable-container.html'

	controller: IndependentlyScrollableContainerController

class ScrollableContent extends angoolar.BaseDirective
	$_name: 'ScrollableContent'

	transclude: 'element'

	$_requireParents: [ IndependentlyScrollableContainer ]

	link: ( scope ) ->
		super

		scope.IndependentlyScrollableContainerController.transcludeScrollableContent @transcludeFn

class NotScrollableContent extends angoolar.BaseDirective
	$_name: 'NotScrollableContent'

	transclude: 'element'

	$_requireParents: [ IndependentlyScrollableContainer ]

	link: ( scope ) ->
		super

		scope.IndependentlyScrollableContainerController.transcludeNotScrollableContent @transcludeFn

angoolar.addDirective IndependentlyScrollableContainer
angoolar.addDirective ScrollableContent
angoolar.addDirective NotScrollableContent
