import TableToJSON from util

pingCommand = ->
    recieved = os.time!
    playerCount = #player.GetAll!

    print TableToJSON
        :received
        :playerCount

concommand.Add "cfc_ping", pingCommand
