import TableToJSON from util
import time from os

SysTime = SysTime
allPlayers = player.GetAll

pingCommand = ->
    received = time!
    uptime = SysTime!
    playerCount = #allPlayers!

    print TableToJSON
        :received
        :uptime
        :playerCount

concommand.Add "cfc_ping", pingCommand
