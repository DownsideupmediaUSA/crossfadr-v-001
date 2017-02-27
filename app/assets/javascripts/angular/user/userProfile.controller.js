(function(){
  'use strict';

  function UserProfileController($scope) {
    $scope.name = 'Mateo is UserProfile'
  }

  UserProfileController.$inject = ['$scope']

  angular
  .module('crossfadr')
  .controller('UserProfileController', UserProfileController)
}());
