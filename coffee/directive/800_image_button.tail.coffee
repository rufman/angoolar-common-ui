
class ImageButton extends angoolar.BaseTemplatedDirective
	$_name: 'ImageButton'

	scope:
		src: '@'

		maxWidth   : '@'
		width      : '@'
		interactive: '@' # will only be interactive if this evaluates to 'true'

angoolar.addDirective ImageButton