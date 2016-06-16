# Description
#   A hubot script that enables your bot to provide a UUID on demand
#
# Commands:
#   uuid please
#
# Author:
#   Lee Blundell <leeblundell16@gmail.com>

uuidFactory = require('node-uuid')

module.exports = (robot) ->
  robot.respond /uuid/i, (msg) ->
    msg.reply uuidFactory.v4()
