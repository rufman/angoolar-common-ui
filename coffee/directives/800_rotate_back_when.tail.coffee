
class RotateBackWhen extends angoolar.BaseDirective
	$_name: 'RotateBackWhen'

	rotateBackClass: 'fade-out-rotate-back'
	rotateForwardClass: 'fade-in-rotate-forward'

	$_dependencies: [ '$timeout' ]

	link: ( @$scope, @$element, @$attrs ) =>
		@$scope.$watch ( => !! @$scope.$eval @$attrs[ @$_makeName() ] ), ( truthy ) =>
			@$element.removeClass "#{ @rotateBackClass } #{ @rotateForwardClass }"

			if truthy
				@$element.addClass @rotateBackClass
			else
				@$element.addClass @rotateForwardClass

				@$timeout ( => @$element.removeClass @rotateForwardClass ), 600

angoolar.addDirective RotateBackWhen