window.app
  .config ($routeProvider, $locationProvider)->
    $routeProvider
      .when "/",
        templateUrl: "/welcome/index.ng"
        controller: "WelcomeCnt"
      .when "/me",
        templateUrl: "/profiles/me.ng"
        controller: "WelcomeCnt"
      .when "/communities",
        templateUrl: "/communities.ng"
        controller: "CommunitiesCnt"
      .when "/communities/:id",
        templateUrl: "/communities/show.ng"
        controller: "CommunityShowCnt"
      .otherwise
        templateUrl: "/communities.ng"
        controller: "CommunitiesCnt"

    # $locationProvider.html5Mode(true)
