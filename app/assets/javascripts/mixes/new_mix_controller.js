// function NewMixController(MixesService, $location){
//   var ctrl = this;
//
//   ctrl.addMix = function(){
//     var newMix = {
//       title: ctrl.mix.title,
//       Dj: ctrl.mix.dj_name,
//       cover: ctrl.mix.image
//     }
//     MixesService.addMix(newMix)
//     .then(function(resp){
//       $location.path('mix/' + resp.data.mix.id);
//       alert('New Mix Added!')
//     },
//       function(error){
//         alert('Cannot create mix: ' + error.statusText);
//       }
//     );
//
//   }
// }
//
// app.controller('NewMixController', NewMixController);
