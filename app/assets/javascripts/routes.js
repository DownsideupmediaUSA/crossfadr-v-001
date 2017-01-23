(function(){
  'use strict';

  angular
  .module('crossfadr')
  .config(function($stateProvider, $urlRouterProvider) {
       $stateProvider
           .state('home', {
               url: '/',
               templateUrl: 'home/home.html',
               controller: 'HomeController as vm'
           })
          //  .state('home.mixes', {
          //    url: '/mixes',
          //    templateUrl: 'mixes/mixes.html',
          //    controller: 'MixController as vm'
          //  })
          .state('home.userProfile', {
            url: '/userProfile',
            templateUrl: 'user/user-profile.html',
            controller: 'UserProfileController as vm'
          })


       $urlRouterProvider.otherwise('/')
  })

}());
