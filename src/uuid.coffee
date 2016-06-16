# Description
#   A hubot script that enables your bot to provide a UUID on demand
#
# Commands:
#   uuid please
#
# Author:
#   Lee Blundell <leeblundell16@gmail.com>

uuid = require('node-uuid')

module.exports = (robot) ->
  robot.respond /uuid/i, (msg) ->
    msg.reply uuid.v4()
