
class PreviewedIframe extends angoolar.FixedProportionDiv
	$_name: 'PreviewedIframe'

	transclude: yes

	scope:
		imgSrc: '@'
		iframeSrc    : '@'
		ratioWidth   : '@'
		ratioHeight  : '@'

	scopeDefaults:
		ratioWidth : 4
		ratioHeight: 3

	notIsolated: yes
		
angoolar.addDirective PreviewedIframe