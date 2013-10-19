window.app.controller 'CommunitiesCnt', ($scope, Community)->
  $scope.communities = Community.query()
  console.log($scope)

window.app.controller 'CommunityShowCnt', ($scope, $location, Community)->
  id = $location.path().split('/communities/')[1]
  $scope.community = Community.get(id: id)
