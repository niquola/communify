window.app.controller 'ProfileMeCnt', ($scope, Profile)->
  $scope.me = Profile.get(id: "me")
