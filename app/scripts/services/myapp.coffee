'use strict'

angular.module('frontendWissenSystemApp')
  .factory 'myApp', () ->
    # Service logic
    # ...

    meaningOfLife = 42

    # Public API here
    {
      someMethod: () ->
        meaningOfLife
    }
