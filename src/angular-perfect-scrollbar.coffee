angular.module 'angular-perfect-scrollbar', []

.directive 'perfectScrollbar', [
	'$parse'
	'$timeout'
	($parse, $timeout) ->
		psOptions = [
			'wheelSpeed'
			'wheelPropagation'
			'swipePropagation'
			'minScrollbarLength'
			'maxScrollbarLength'
			'useBothWheelAxes'
			'useKeyboard'
			'suppressScrollX'
			'suppressScrollY'
			'scrollXMarginOffset'
			'scrollYMarginOffset'
		]

		restrict: 'EA'
		link: (scope, element, attrs) ->
			options = {}

			update = ->
				scope.$evalAsync -> Ps.update element[0]

			init = ->
				for option in psOptions
					options[option] = $parse(attrs[option])(scope) if attrs[option]?

				if window?.getComputedStyle?(element[0]).position is 'static'
					element.css position: 'relative'

				Ps.initialize element[0], options

			scope.$evalAsync init

			element.on 'mouseenter', update
			scope.$on '$updatePrefectScrollbar', update

			scope.$on '$destroy', -> Ps.destroy element[0]
]
