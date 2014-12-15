# angular.module "roundUp.controllers", []
# # angular.module "roundUp.factories", []

# # And inject in app module
# app = angular.module("roundUp", [
#   "rails"
#   "roundUp.controllers"
#   # "roundUp.factories"
#   "ngRoute"
# ])

# app.config ($routeProvider, $locationProvider) ->
#   $locationProvider.html5Mode
#     enabled: true
#     requireBase: false

#   $routeProvider.when("/",
#     templateUrl: "/templates/home.html"
#     controller: "AccessController"
#   ).when("/movie/:movie_id",
#     templateUrl: "/templates/movie.html"
#     controller: "MovieController"
#   ).when("/movies",
#     controller: "MoviesController"
#     templateUrl: "/templates/movies.html"
#   ).otherwise redirectTo: "/"
#   return