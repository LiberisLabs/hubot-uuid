Helper = require 'hubot-test-helper'
expect = require('chai').expect

helper = new Helper('../src/uuid.coffee')

describe '@hubot uuid please', ->
  before ->
    @room = helper.createRoom()

  after ->
    @room.destroy()

  it 'responds with an uuid', ->
    @room.user.say('bob', '@hubot uuid please').then =>
      expect(@room.messages[0]).to.eql([ 'bob', '@hubot uuid please' ])
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(/@bob [0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[0-9a-f]{4}-[0-9a-f]{12}/i)