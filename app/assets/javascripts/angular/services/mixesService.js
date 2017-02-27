function MixService($http){

  this.getAllMixes = function(){
    return $http.get(API_URL + 'mixes')
  }

  this.getMix = function(id){
    var mix =  $http.get(API_URl + 'mixes/' + id);
    return mix
  }

  this.addMix = function(id){
    return  $http.get(API_URl + 'mixes/' + id);
  }

  this.editMix = function(updatedMix, id){
    return $http.post(API_URl = 'mixes' + id, updatedMix);
  }

  this.deleteMix = function(mix) {
    return $http.delete(API_URl, 'mixes/' + mix.id);
  }
}
