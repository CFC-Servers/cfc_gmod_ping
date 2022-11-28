import time from os
import TableToJSON from util

pingCommand = ->
    received = time!
    uptime = SysTime!
    playerCount = #player.GetAll!

    print TableToJSON
        :received
        :uptime
        :playerCount

concommand.Add "cfc_ping", pingCommand
timer.Create "CFC_Ping_Interval", 30, 0, pingCommand
