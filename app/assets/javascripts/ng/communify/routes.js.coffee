window.app
  .config ($routeProvider, $locationProvider)->
    $routeProvider
      .when "/",
        templateUrl: "/welcome/index.ng"
        controller: "WelcomeCnt"
      .when "/me",
        templateUrl: "/profiles/me.ng"
        controller: "ProfileMeCnt"
      .when "/communities",
        templateUrl: "/communities.ng"
        controller: "CommunitiesCnt"
      .when "/communities/new",
        templateUrl: "/communities/new.ng"
        controller: "CommunityNewCnt"
      .when "/communities/:id",
        templateUrl: "/communities/show.ng"
        controller: "CommunityShowCnt"
      .otherwise
        templateUrl: "/communities.ng"
        controller: "CommunitiesCnt"

    # $locationProvider.html5Mode(true)
