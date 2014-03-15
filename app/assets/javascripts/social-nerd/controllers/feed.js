controllers.feedCtrl = ['$scope', function($scope) {

  $scope.posts = [ { content: "Estou comendo pavê de copo" } ]

  $scope.createPost = function() {
    var newPost = { content: $scope.content }
    $scope.posts.unshift(newPost)
    $scope.content = null
  }

}]
