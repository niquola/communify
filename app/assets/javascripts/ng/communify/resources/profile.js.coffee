window.app
  .factory 'Profile', ($resource)->
    $resource '/profiles/:id'
