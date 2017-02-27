(function() {
  'use strict';

  function MixController($scope) {
    $scope.name = 'Mateo is home'
  }

  MixController.$inject = ['$scope']

  angular
  .module('crossfadr')
  .controller('MixController', MixController)
}());
