RegisterNetEvent('fxchatrp:sendProximityMessage')
AddEventHandler('fxchatrp:sendProximityMessage', function(title, message, color)
    TriggerEvent('chat:addMessage', {args = {title, message}, color = color})
end)

RegisterNetEvent('fxchatrp:sendoop')
AddEventHandler('fxchatrp:sendoop', function(title, message, color)
	local playerId = PlayerId()
	local playerPed = PlayerPedId()
	local playerPos = GetEntityCoords(playerPed)
	local playerList = GetActivePlayers()
	for i = 1, #playerList do 
		local remotePlayerId = playerList[i]
		if playerId ~= remotePlayerId then
			local remotePlayerServerId = GetPlayerServerId(remotePlayerId)
			local remotePlayerPed = GetPlayerPed(remotePlayerId)
			local remotePlayerPos = GetEntityCoords(remotePlayerPed)
			local distance = #(playerPos - remotePlayerPos)
			
			if distance <= 16 then
				TriggerServerEvent('fxchatrp:yessendoop', remotePlayerServerId, title, message, color)
			end
		end
	end
    TriggerEvent('chat:addMessage', {args = {title, message}, color = color})
end)

RegisterNetEvent('fxchatrp:sendmedo')
AddEventHandler('fxchatrp:sendmedo', function(title, message, color)
	local playerId = PlayerId()
	local playerPed = PlayerPedId()
	local playerPos = GetEntityCoords(playerPed)
	local playerList = GetActivePlayers()
	for i = 1, #playerList do 
		local remotePlayerId = playerList[i]
		if playerId ~= remotePlayerId then
			local remotePlayerServerId = GetPlayerServerId(remotePlayerId)
			local remotePlayerPed = GetPlayerPed(remotePlayerId)
			local remotePlayerPos = GetEntityCoords(remotePlayerPed)
			local distance = #(playerPos - remotePlayerPos)
			
			if distance <= 15 then
				TriggerServerEvent('fxchatrp:yessendmedo', remotePlayerServerId, title, message, color)
			end
		end
	end
    TriggerEvent('chat:addMessage', {args = {title, message}, color = color})
end)


RegisterNetEvent('fxchatrp:sendsusurro')
AddEventHandler('fxchatrp:sendsusurro', function(title, message, color)
	local playerId = PlayerId()
	local playerPed = PlayerPedId()
	local playerPos = GetEntityCoords(playerPed)
	local playerList = GetActivePlayers()
	for i = 1, #playerList do 
		local remotePlayerId = playerList[i]
		if playerId ~= remotePlayerId then
			local remotePlayerServerId = GetPlayerServerId(remotePlayerId)
			local remotePlayerPed = GetPlayerPed(remotePlayerId)
			local remotePlayerPos = GetEntityCoords(remotePlayerPed)
			local distance = #(playerPos - remotePlayerPos)
			
			if distance <= 1 then
				TriggerServerEvent('fxchatrp:yessendsus', remotePlayerServerId, title, message, color)
			end
		end
	end
    TriggerEvent('chat:addMessage', {args = {title, message}, color = color})
end)

RegisterNetEvent('fxchatrp:sendgritar')
AddEventHandler('fxchatrp:sendgritar', function(title, message, color)
	local playerId = PlayerId()
	local playerPed = PlayerPedId()
	local playerPos = GetEntityCoords(playerPed)
	local playerList = GetActivePlayers()
	for i = 1, #playerList do 
		local remotePlayerId = playerList[i]
		if playerId ~= remotePlayerId then
			local remotePlayerServerId = GetPlayerServerId(remotePlayerId)
			local remotePlayerPed = GetPlayerPed(remotePlayerId)
			local remotePlayerPos = GetEntityCoords(remotePlayerPed)
			local distance = #(playerPos - remotePlayerPos)
			
			if distance <= 25 then
				TriggerServerEvent('fxchatrp:yessendgritar', remotePlayerServerId, title, message, color)
			end
		end
	end
    TriggerEvent('chat:addMessage', {args = {title, message}, color = color})
end)


Citizen.CreateThread(function()
	TriggerEvent('chat:addSuggestion', '/b',  'Chat OOC.',  {{name = 'Mensaje', help = 'El mensaje'}})
	TriggerEvent('chat:addSuggestion', '/me',   'Accion personal',   {{name = 'Mensaje', help = 'El mensaje'}})
	TriggerEvent('chat:addSuggestion', '/do',   'Pensamiento personal',   {{name = 'Mensaje', help = 'El mensaje'}})
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		TriggerEvent('chat:removeSuggestion', '/anonimo')
		TriggerEvent('chat:removeSuggestion', '/oop')
		TriggerEvent('chat:removeSuggestion', '/twt')
		TriggerEvent('chat:removeSuggestion', '/me')
		TriggerEvent('chat:removeSuggestion', '/do')
	end
end)
