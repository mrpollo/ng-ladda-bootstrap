###
 * AngularJS ladda-bootstrap directive
 * @author Ramón Roche <mrpollo@gmail.com>
 * @version 0.0.1
 * @license MIT
###

###
global angular, Ladda
###

'use strict'

angular.module('ngLaddaBootstrap', []).directive 'ngLaddaBootstrap', ['$timeout', ($timeout) -> return {
	scope:
		'laddaToggle': '='
	link: ($scope, $element, $attrs) ->
		$timeout ->
			ladda = Ladda.create($element[0])

			$scope.$watch 'laddaToggle', (newVal) ->
				if newVal
					ladda.start() unless ladda.isLoading()

					ladda.setProgress(newVal / 100) if angular.isNumber newVal

				else if ladda.isLoading()
					ladda.stop()
}]
