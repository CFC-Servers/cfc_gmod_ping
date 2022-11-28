local time
time = os.time
local TableToJSON
TableToJSON = util.TableToJSON
local pingCommand
pingCommand = function()
  local received = time()
  local uptime = SysTime()
  local playerCount = #player.GetAll()
  return print(TableToJSON({
    received = received,
    uptime = uptime,
    playerCount = playerCount
  }))
end
concommand.Add("cfc_ping", pingCommand)
return timer.Create("CFC_Ping_Interval", 30, 0, pingCommand)
