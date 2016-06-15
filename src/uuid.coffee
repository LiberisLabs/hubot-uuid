# Description
#   A hubot script that enables your bot to provide a UUID on demand
#
# Commands:
#   uuid please
#
# Author:
#   Lee Blundell <leeblundell16@gmail.com>

module.exports = (robot) ->
  robot.respond /hello/, (msg) ->
    console.log('hey')
    msg.reply "hello!"
