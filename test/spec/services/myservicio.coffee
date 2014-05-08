'use strict'

describe 'Service: Myservicio', () ->

  # load the service's module
  beforeEach module 'frontendWissenSystemApp'

  # instantiate service
  Myservicio = {}
  beforeEach inject (_Myservicio_) ->
    Myservicio = _Myservicio_

  it 'should do something', () ->
    expect(!!Myservicio).toBe true
