(function() {
  'use strict';

  function HomeController($scope) {
    $scope.name = 'Mateo is home'
  }

  HomeController.$inject = ['$scope']

  angular
  .module('crossfadr')
  .controller('HomeController', HomeController)
}());
