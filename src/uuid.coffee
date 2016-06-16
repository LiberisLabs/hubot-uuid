# Description
#   A hubot script that enables your bot to provide a UUID on demand
#
# Dependencies
#  "node-uuid": "^1.4.7"
#
# Commands:
#   hubot uuid - respond with a UUID
#
# Author:
#   Lee Blundell <leeblundell16@gmail.com>

uuid = require('node-uuid')

module.exports = (robot) ->
  robot.respond /uuid/i, (msg) ->
    msg.reply uuid.v4()
