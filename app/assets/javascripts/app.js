(function(){
  'use strict';

  function MixController($scope) {
    $scope.name = 'Mateo'
  }

  angular
  .module('crossfadr', ['ui.router', 'templates', 'Devise'])
  .controller('MixController', MixController)
}());
