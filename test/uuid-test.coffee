Helper = require 'hubot-test-helper'
expect = require('chai').expect

helper = new Helper('../src/uuid.coffee')

describe '@hubot uuid please', ->
  before ->
    @room = helper.createRoom()

  after ->
    @room.destroy()

  it 'responds with a uuid', ->
    @room.user.say('bob', '@hubot hello').then =>
      expect(@room.messages[1]).to.match(/[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[0-9a-f]{4}-[0-9a-f]{12}/i)