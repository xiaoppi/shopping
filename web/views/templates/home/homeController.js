angular.module('app')
	.controller('homeController', ['$scope', '$state', 'API', 'utils', function ($scope, $state, API, utils) {

		utils.tips.showLoadTips();
		API.fetchGet('/main/home')
			.then(function (data) {
				$scope.data = data.data;
				utils.tips.hideLoadTips();
			})
			.catch(function (err) {
				console.log(err);
				utils.tips.hideLoadTips();
			})


		$scope.getFocus = function (stateName) {
			$state.go(stateName)
		}

	}])