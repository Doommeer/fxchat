FX = nil

TriggerEvent('fx:get', function(core) FX = core end)

local this = FX.Functions()

RegisterCommand('b', function(source, args, rawCommand)
	local player = FX.GetPlayerById(source)
	local playerName = player:Player().getName(source)

    args = table.concat(args, ' ')
	TriggerClientEvent('fxchatrp:sendoop', source, '(( [OOC ID:'..source..'] '..playerName..':', ''..args..' ))', {135, 135, 135})
end, false)

RegisterNetEvent("fxchatrp:yessendoop")
AddEventHandler("fxchatrp:yessendoop", function(targetId, title, message, color)
	TriggerClientEvent('fxchatrp:sendProximityMessage', targetId, title, message, {146, 144, 144})
end)

--[[RegisterCommand('id', function(playerId, args, rawCommand)
	local player = FX.GetPlayerById(source)
	local playerName = player:Player().getName(playerId)
    args = table.concat(args, ' ')

		TriggerClientEvent('chat:addMessage', -1, {args = {" ["..playerId.."] IDs", args}, color = {56, 74, 218}})
end, false)]]--





-- RegisterCommand('taxi', function(playerId, args, rawCommand)
-- 	local player = FX.GetPlayerById(playerId)
-- 	if player.job.name == 'taxi' then
-- 		args = table.concat(args, ' ')
-- 		local name = GetPlayerName(playerId)
-- 		TriggerClientEvent('chat:addMessage', -1, {args = {_U('taxi_prefix'), args}, color = {255, 243, 0}})
-- 	end
-- end, false)

RegisterCommand('mp', function(source, args, rawCommand)
  
	if source == 0 then
	
		print('fxchatrp: you cant use this command from rcon!')
	
		return
	
	end
	
	if tonumber(args[1]) and args[2] then
	
		local id=tonumber(args[1])
	
		msg = table.concat(args, ' ', 2)
	 
--		local name =  GetPlayerName(source)
		local player = FX.GetPlayerById(source)

		local name = player:Player().getName(source)

--		local nombre =  player:Player().getName(id)
	
--		local characterName = GetCharacterName(source)
	
		name = '' .. name .. ' (ID: '.. source ..')'
	
		--local players = ESX.GetPlayers()
	
		--local target = FX.GetPlayerById(id)

 
		if(target ~= nil) then
	   
			TriggerClientEvent('chat:addMessage', id, {
	
				template = '<div style="font-size: 1.70vh; border-radius: 3px;"><i class="far fa-comments"></i> <b> <b style=color:#DAFF33>(( [MP de {1}]: {2} ))</div>',
	
				args = { fal, name, msg }
	
			})
			TriggerClientEvent('chat:addMessage', source, {

				template = '<div style="font-size: 1.70vh; border-radius: 3px;"><i class="far fa-comments"></i> <b> <b style=color:#DAFF33>(( [MP enviado a {1}]: {2} ))</div>',
	
				args = { fal, name, msg }
	
			})
			
		else

			TriggerClientEvent('fx:showNotification', source, "Este ID no está conectado.")
	
		end
		
		
	
	else
	
		TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Invalid usage.' } })
	
	end

end, false)

RegisterCommand('me', function(source, args, rawCommand)
    local player = FX.GetPlayerById(source)
	local playerName = player:Player().getName(source)
	args = table.concat(args, ' ')
	TriggerClientEvent('fxchatrp:sendmedo', source, playerName, '^6^*'..args..'', { 187, 156, 210 })
end, false)

RegisterNetEvent("fxchatrp:yessendmedo")
AddEventHandler("fxchatrp:yessendmedo", function(targetId, title, message, color)
	TriggerClientEvent('fxchatrp:sendProximityMessage', targetId, title, message, color)
end)


RegisterNetEvent("fxchatrp:yessendgritar")
AddEventHandler("fxchatrp:yessendgritar", function(targetId, title, message, color)
	TriggerClientEvent('fxchatrp:sendProximityMessage', targetId, title, message, color)
end)
RegisterNetEvent("fxchatrp:yessendsus")
AddEventHandler("fxchatrp:yessendsus", function(targetId, title, message, color)
	TriggerClientEvent('fxchatrp:sendProximityMessage', targetId, title, message, color)
end)

RegisterCommand('do', function(source, args, rawCommand)
    local player = FX.GetPlayerById(source)
	local playerName = player:Player().getName(source)
	args = table.concat(args, ' ')
	TriggerClientEvent('fxchatrp:sendmedo', source, '['..playerName..' - '..source..']', '^2^*'..args..'', { 142, 189, 46 })
end, false)

RegisterCommand('d', function(source, args, rawCommand)
    local player = FX.GetPlayerById(source)
	local playerName = player:Player().getName(source)
	args = table.concat(args, ' ')
	TriggerClientEvent('fxchatrp:sendmedo', source, playerName, '^*dice: '..args..'', {255, 255, 255 })
end, false)

RegisterCommand('dados', function(source, args, rawCommand)
    local player = FX.GetPlayerById(source)
	local playerName = player:Player().getName(source)
	num = math.random(1,6)
	args = table.concat(args, ' ')
	TriggerClientEvent('fxchatrp:sendmedo', source, '** '..playerName, '^2^*ha lanzado unos dados y ha sacado '..num..' **', {142, 189, 46 })
end, false)

RegisterCommand('sus', function(source, args, rawCommand)
    local player = FX.GetPlayerById(source)
	local playerName = player:Player().getName(source)
	args = table.concat(args, ' ')
	TriggerClientEvent('fxchatrp:sendsusurro', source, playerName, '^*susurra: '..args..'', {255, 255, 255 })
end, false)

RegisterCommand('gr', function(source, args, rawCommand)
    local player = FX.GetPlayerById(source)
	local playerName = player:Player().getName(source)
	args = table.concat(args, ' ')
	TriggerClientEvent('fxchatrp:sendgritar', source, playerName, '^*grita: ¡'..args..'!', {255, 255, 255 })
end, false)

--[[RegisterCommand('staffchat', function(source, args, rawCommand)
	local player = FX.GetPlayerById(source)
    args = table.concat(args, ' ')
    local playerName = GetPlayerName(source)
	if player.getGroup() == "admin" then
		TriggerClientEvent('chat:addMessage', -1, {args = {"^*^3[ADMINISTRACIÓN] "..playerName..":", args}, color = {55, 157, 100}})
	else
		print("No eres admin")
	end
end, false)]]--

