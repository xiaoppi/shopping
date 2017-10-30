angular.module('app')
	.controller('shopcartController', ['$scope', 'API', 'utils', function ($scope, API, utils) {

		utils.tips.showLoadTips();
		API.fetchGet('/main/shopcart/123@qq.com', {email: '123@qq.com'})
			.then(function (data) {
				console.log('data ==> ', data);
				$scope.data = data.data;
				utils.tips.hideLoadTips();
			})
			.catch(function (err) {
				console.log(err);
				utils.tips.hideLoadTips();
			})
		
	}])