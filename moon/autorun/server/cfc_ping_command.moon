import TableToJSON from util
import time from os

pingCommand = ->
    received = time!
    uptime = SysTime!
    playerCount = #player.GetAll!

    print TableToJSON
        :received
        :uptime
        :playerCount

concommand.Add "cfc_ping", pingCommand
