window.app
  .factory 'Community', ($resource)->
    $resource '/communities/:id'
