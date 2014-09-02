###
 * AngularJS ladda-bootstrap directive
 * @author Ramón Roche <mrpollo@gmail.com>
 * @version 0.0.1
###

###
global angular, Ladda
###

'use strict'

angular.module('ngLaddaBootstrap', []).directive 'ngLaddaBootstrap', ['$timeout', ($timeout) -> return {
	link: ($scope, $element, $attrs) ->
		$timeout ->
			ladda = Ladda.create($element[0])

			$scope.$watch $attrs.ngLaddaBootstrap, (newVal) ->
				if newVal
					ladda.start() unless ladda.isLoading()

					ladda.setProgress(newVal / 100) if angular.isNumber newVal

				else if ladda.isLoading()
					ladda.stop()
}]
