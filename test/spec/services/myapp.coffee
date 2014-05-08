'use strict'

describe 'Service: myApp', () ->

  # load the service's module
  beforeEach module 'frontendWissenSystemApp'

  # instantiate service
  myApp = {}
  beforeEach inject (_myApp_) ->
    myApp = _myApp_

  it 'should do something', () ->
    expect(!!myApp).toBe true
