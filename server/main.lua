--] Ignore the messy code, it works! [--

 RegisterCommand('tweet', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(6)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(28, 160, 242, 0.6); border-radius: 3px;"> <img src="https://i.imgur.com/rj3Ex7T.png" align="top"> @{0}:<br> {1}</div>',
        args = { playerName, msg }
    })
end)

 RegisterCommand('darkweb', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(9)
   
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.6); border-radius: 3px;"> <img src="https://i.imgur.com/rj3Ex7T.png" align="top"> @Darkweb:<br> {1}</div>',
        args = { playerName, msg }
    })
end)

 RegisterCommand('ad', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(3)

    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 255, 51, 0.6); border-radius: 3px;"> <img src="https://i.imgur.com/1GzpaHO.png" align="top"> {0}:<br> {1}</div>',
        args = { playerName, msg }
    })
end)

function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end
