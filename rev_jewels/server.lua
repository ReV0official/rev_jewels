ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

-----apr
RegisterServerEvent('rev_jewels:cutdia')
AddEventHandler('rev_jewels:cutdia', function()
	math.randomseed(os.time())
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('uncut_diamond').count
	local luck = math.random(0,500)
	local amounttogive = 1
	
    
    if item > 0 then
        xPlayer.removeInventoryItem('uncut_diamond', 1)
		if luck >= 0 and luck <= 10 then
			xPlayer.addInventoryItem("q1diamond", amounttogive)
		end
		if luck >= 11 and luck <= 49 then
			xPlayer.addInventoryItem("q2diamond", amounttogive)
		end
		if luck >= 50 and luck <= 99 then
			xPlayer.addInventoryItem("q3diamond", amounttogive)
		end
		if luck >= 100 and luck <= 199 then
			xPlayer.addInventoryItem("q4diamond", amounttogive)
		end
		if luck >= 200 and luck <= 299 then
			xPlayer.addInventoryItem("q5diamond", amounttogive)
		end
		if luck >= 300 and luck <= 349 then
			xPlayer.addInventoryItem("q6diamond", amounttogive)
		end
		if luck >= 350 and luck <= 399 then
			xPlayer.addInventoryItem("q7diamond", amounttogive)
		end
		if luck >= 400 and luck <= 449 then
			xPlayer.addInventoryItem("q8diamond", amounttogive)
		end
		if luck >= 450 and luck <= 497 then
			xPlayer.addInventoryItem("q9diamond", amounttogive)
		end
		if luck >=498 and luck <= 500 then
			xPlayer.addInventoryItem("q10diamond", amounttogive)
		end
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to cut!')
	end
end)

RegisterServerEvent('rev_jewels:cutrub')
AddEventHandler('rev_jewels:cutrub', function()
	math.randomseed(os.time())
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('uncut_rubbies').count
	local luck = math.random(0,500)
	local amounttogive = 1
	
    
    if item > 0 then
        xPlayer.removeInventoryItem('uncut_rubbies', 1)
		if luck >= 0 and luck <= 10 then
			xPlayer.addInventoryItem("q1ruby", amounttogive)
		end
		if luck >= 11 and luck <= 49 then
			xPlayer.addInventoryItem("q2ruby", amounttogive)
		end
		if luck >= 50 and luck <= 99 then
			xPlayer.addInventoryItem("q3ruby", amounttogive)
		end
		if luck >= 100 and luck <= 199 then
			xPlayer.addInventoryItem("q4ruby", amounttogive)
		end
		if luck >= 200 and luck <= 299 then
			xPlayer.addInventoryItem("q5ruby", amounttogive)
		end
		if luck >= 300 and luck <= 349 then
			xPlayer.addInventoryItem("q6ruby", amounttogive)
		end
		if luck >= 350 and luck <= 399 then
			xPlayer.addInventoryItem("q7ruby", amounttogive)
		end
		if luck >= 400 and luck <= 449 then
			xPlayer.addInventoryItem("q8ruby", amounttogive)
		end
		if luck >= 450 and luck <= 497 then
			xPlayer.addInventoryItem("q9ruby", amounttogive)
		end
		if luck >=498 and luck <= 500 then
			xPlayer.addInventoryItem("q10ruby", amounttogive)
		end
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to cut!')
	end
end)

RegisterServerEvent('rev_jewels:aprgoldneck')
AddEventHandler('rev_jewels:aprgoldneck', function()
	math.randomseed(os.time())
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('goldnecklace').count
	local luck = math.random(0,500)
	local amounttogive = 1
	
    
    if item > 0 then
        xPlayer.removeInventoryItem('goldnecklace', 1)
		if luck >= 0 and luck <= 10 then
			xPlayer.addInventoryItem("q1goldnecklace", amounttogive)
		end
		if luck >= 11 and luck <= 49 then
			xPlayer.addInventoryItem("q2goldnecklace", amounttogive)
		end
		if luck >= 50 and luck <= 99 then
			xPlayer.addInventoryItem("q3goldnecklace", amounttogive)
		end
		if luck >= 100 and luck <= 199 then
			xPlayer.addInventoryItem("q4goldnecklace", amounttogive)
		end
		if luck >= 200 and luck <= 299 then
			xPlayer.addInventoryItem("q5goldnecklace", amounttogive)
		end
		if luck >= 300 and luck <= 349 then
			xPlayer.addInventoryItem("q6goldnecklace", amounttogive)
		end
		if luck >= 350 and luck <= 399 then
			xPlayer.addInventoryItem("q7goldnecklace", amounttogive)
		end
		if luck >= 400 and luck <= 449 then
			xPlayer.addInventoryItem("q8goldnecklace", amounttogive)
		end
		if luck >= 450 and luck <= 497 then
			xPlayer.addInventoryItem("q9goldnecklace", amounttogive)
		end
		if luck >=498 and luck <= 500 then
			xPlayer.addInventoryItem("q10goldnecklace", amounttogive)
		end
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to appraise!')
	end
end)

RegisterServerEvent('rev_jewels:aprneck')
AddEventHandler('rev_jewels:aprneck', function()
	math.randomseed(os.time())
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('necklace').count
	local luck = math.random(0,500)
	local amounttogive = 1
	
    
    if item > 0 then
        xPlayer.removeInventoryItem('necklace', 1)
		if luck >= 0 and luck <= 10 then
			xPlayer.addInventoryItem("q1necklace", amounttogive)
		end
		if luck >= 11 and luck <= 49 then
			xPlayer.addInventoryItem("q2necklace", amounttogive)
		end
		if luck >= 50 and luck <= 99 then
			xPlayer.addInventoryItem("q3necklace", amounttogive)
		end
		if luck >= 100 and luck <= 199 then
			xPlayer.addInventoryItem("q4necklace", amounttogive)
		end
		if luck >= 200 and luck <= 299 then
			xPlayer.addInventoryItem("q5necklace", amounttogive)
		end
		if luck >= 300 and luck <= 349 then
			xPlayer.addInventoryItem("q6necklace", amounttogive)
		end
		if luck >= 350 and luck <= 399 then
			xPlayer.addInventoryItem("q7necklace", amounttogive)
		end
		if luck >= 400 and luck <= 449 then
			xPlayer.addInventoryItem("q8necklace", amounttogive)
		end
		if luck >= 450 and luck <= 497 then
			xPlayer.addInventoryItem("q9necklace", amounttogive)
		end
		if luck >=498 and luck <= 500 then
			xPlayer.addInventoryItem("q10necklace", amounttogive)
		end 
	else
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to appraise!')
	end
end)

RegisterServerEvent('rev_jewels:aprring')
AddEventHandler('rev_jewels:aprring', function()
	math.randomseed(os.time())
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('ring').count
	local luck = math.random(0,500)
	local amounttogive = 1
	
    
    if item > 0 then
        xPlayer.removeInventoryItem('ring', 1)
		if luck >= 0 and luck <= 10 then
			xPlayer.addInventoryItem("q1ring", amounttogive)
		end
		if luck >= 11 and luck <= 49 then
			xPlayer.addInventoryItem("q2ring", amounttogive)
		end
		if luck >= 50 and luck <= 99 then
			xPlayer.addInventoryItem("q3ring", amounttogive)
		end
		if luck >= 100 and luck <= 199 then
			xPlayer.addInventoryItem("q4ring", amounttogive)
		end
		if luck >= 200 and luck <= 299 then
			xPlayer.addInventoryItem("q5ring", amounttogive)
		end
		if luck >= 300 and luck <= 349 then
			xPlayer.addInventoryItem("q6ring", amounttogive)
		end
		if luck >= 350 and luck <= 399 then
			xPlayer.addInventoryItem("q7ring", amounttogive)
		end
		if luck >= 400 and luck <= 449 then
			xPlayer.addInventoryItem("q8ring", amounttogive)
		end
		if luck >= 450 and luck <= 497 then
			xPlayer.addInventoryItem("q9ring", amounttogive)
		end
		if luck >=498 and luck <= 500 then
			xPlayer.addInventoryItem("q10ring", amounttogive)
		end 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to appraise!')
	end
end)

RegisterServerEvent('rev_jewels:aprwatch')
AddEventHandler('rev_jewels:aprwatch', function()
	math.randomseed(os.time())
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('goldwatch').count
	local luck = math.random(0,500)
	local amounttogive = 1
	
    
    if item > 0 then
        xPlayer.removeInventoryItem('goldwatch', 1)
		if luck >= 0 and luck <= 10 then
			xPlayer.addInventoryItem("q1goldwatch", amounttogive)
		end
		if luck >= 11 and luck <= 49 then
			xPlayer.addInventoryItem("q2goldwatch", amounttogive)
		end
		if luck >= 50 and luck <= 99 then
			xPlayer.addInventoryItem("q3goldwatch", amounttogive)
		end
		if luck >= 100 and luck <= 199 then
			xPlayer.addInventoryItem("q4goldwatch", amounttogive)
		end
		if luck >= 200 and luck <= 299 then
			xPlayer.addInventoryItem("q5goldwatch", amounttogive)
		end
		if luck >= 300 and luck <= 349 then
			xPlayer.addInventoryItem("q6goldwatch", amounttogive)
		end
		if luck >= 350 and luck <= 399 then
			xPlayer.addInventoryItem("q7goldwatch", amounttogive)
		end
		if luck >= 400 and luck <= 449 then
			xPlayer.addInventoryItem("q8goldwatch", amounttogive)
		end
		if luck >= 450 and luck <= 497 then
			xPlayer.addInventoryItem("q9goldwatch", amounttogive)
		end
		if luck >=498 and luck <= 500 then
			xPlayer.addInventoryItem("q10goldwatch", amounttogive)
		end 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to appraise!')
	end
end)
-----DIAMONDS
RegisterServerEvent('rev_jewels:selldia1')
AddEventHandler('rev_jewels:selldia1', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q1diamond').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q1diamond', 1)
		xPlayer.addMoney(1800) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:selldia2')
AddEventHandler('rev_jewels:selldia2', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q2diamond').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q2diamond', 1)
		xPlayer.addMoney(2400) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:selldia3')
AddEventHandler('rev_jewels:selldia3', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q3diamond').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q3diamond', 1)
		xPlayer.addMoney(3500) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:selldia4')
AddEventHandler('rev_jewels:selldia4', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q4diamond').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q4diamond', 1)
		xPlayer.addMoney(10000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:selldia5')
AddEventHandler('rev_jewels:selldia5', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q5diamond').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q5diamond', 1)
		xPlayer.addMoney(20000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:selldia6')
AddEventHandler('rev_jewels:selldia6', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q6diamond').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q6diamond', 1)
		xPlayer.addMoney(45000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:selldia7')
AddEventHandler('rev_jewels:selldia7', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q7diamond').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q7diamond', 1)
		xPlayer.addMoney(90000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:selldia8')
AddEventHandler('rev_jewels:selldia8', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q8diamond').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q8diamond', 1)
		xPlayer.addMoney(125000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:selldia9')
AddEventHandler('rev_jewels:selldia9', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q9diamond').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q9diamond', 1)
		xPlayer.addMoney(400000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:selldia10')
AddEventHandler('rev_jewels:selldia10', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q10diamond').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q10diamond', 1)
		xPlayer.addMoney(1250000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
--------Rubies
RegisterServerEvent('rev_jewels:sellrub1')
AddEventHandler('rev_jewels:sellrub1', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q1ruby').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q1ruby', 1)
		xPlayer.addMoney(750) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellrub2')
AddEventHandler('rev_jewels:sellrub2', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q2ruby').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q2ruby', 1)
		xPlayer.addMoney(1250) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellrub3')
AddEventHandler('rev_jewels:sellrub3', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q3ruby').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q3ruby', 1)
		xPlayer.addMoney(4000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellrub4')
AddEventHandler('rev_jewels:sellrub4', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q4ruby').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q4ruby', 1)
		xPlayer.addMoney(7500) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellrub5')
AddEventHandler('rev_jewels:sellrub5', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q5ruby').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q5ruby', 1)
		xPlayer.addMoney(15000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellrub6')
AddEventHandler('rev_jewels:sellrub6', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q6ruby').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q6ruby', 1)
		xPlayer.addMoney(30000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellrub7')
AddEventHandler('rev_jewels:sellrub7', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q7ruby').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q7ruby', 1)
		xPlayer.addMoney(75000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellrub8')
AddEventHandler('rev_jewels:sellrub8', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q8ruby').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q8ruby', 1)
		xPlayer.addMoney(90000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellrub9')
AddEventHandler('rev_jewels:sellrub9', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q9ruby').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q9ruby', 1)
		xPlayer.addMoney(250000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellrub10')
AddEventHandler('rev_jewels:sellrub10', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q10ruby').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q10ruby', 1)
		xPlayer.addMoney(750000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
------------gneck
RegisterServerEvent('rev_jewels:sellgneck1')
AddEventHandler('rev_jewels:sellgneck1', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q1goldnecklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q1goldnecklace', 1)
		xPlayer.addMoney(750) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellgneck2')
AddEventHandler('rev_jewels:sellgneck2', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q2goldnecklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q2goldnecklace', 1)
		xPlayer.addMoney(900) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellgneck3')
AddEventHandler('rev_jewels:sellgneck3', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q3goldnecklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q3goldnecklace', 1)
		xPlayer.addMoney(1250) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellgneck4')
AddEventHandler('rev_jewels:sellgneck4', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q4goldnecklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q4goldnecklace', 1)
		xPlayer.addMoney(3000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellgneck5')
AddEventHandler('rev_jewels:sellgneck5', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q5goldnecklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q5goldnecklace', 1)
		xPlayer.addMoney(5000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellgneck6')
AddEventHandler('rev_jewels:sellgneck6', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q6goldnecklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q6goldnecklace', 1)
		xPlayer.addMoney(8000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellgneck7')
AddEventHandler('rev_jewels:sellgneck7', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q7goldnecklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q7goldnecklace', 1)
		xPlayer.addMoney(12500) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellgneck8')
AddEventHandler('rev_jewels:sellgneck8', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q8goldnecklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q8goldnecklace', 1)
		xPlayer.addMoney(25000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellgneck9')
AddEventHandler('rev_jewels:sellgneck9', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q9goldnecklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q9goldnecklace', 1)
		xPlayer.addMoney(50000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellgneck10')
AddEventHandler('rev_jewels:sellgneck10', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q10goldnecklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q10goldnecklace', 1)
		xPlayer.addMoney(500000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
---------------neck
RegisterServerEvent('rev_jewels:sellneck1')
AddEventHandler('rev_jewels:sellneck1', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q1necklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q1necklace', 1)
		xPlayer.addMoney(750) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellneck2')
AddEventHandler('rev_jewels:sellneck2', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q2necklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q2necklace', 1)
		xPlayer.addMoney(900) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellneck3')
AddEventHandler('rev_jewels:sellneck3', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q3necklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q3necklace', 1)
		xPlayer.addMoney(1250) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellneck4')
AddEventHandler('rev_jewels:sellneck4', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q4necklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q4necklace', 1)
		xPlayer.addMoney(3000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellneck5')
AddEventHandler('rev_jewels:sellneck5', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q5necklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q5necklace', 1)
		xPlayer.addMoney(5000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellneck6')
AddEventHandler('rev_jewels:sellneck6', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q6necklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q6necklace', 1)
		xPlayer.addMoney(8000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellneck7')
AddEventHandler('rev_jewels:sellneck7', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q7necklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q7necklace', 1)
		xPlayer.addMoney(12500) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellneck8')
AddEventHandler('rev_jewels:sellneck8', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q8necklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q8necklace', 1)
		xPlayer.addMoney(25000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellneck9')
AddEventHandler('rev_jewels:sellneck9', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q9necklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q9necklace', 1)
		xPlayer.addMoney(50000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellneck10')
AddEventHandler('rev_jewels:sellneck10', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q10necklace').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q10necklace', 1)
		xPlayer.addMoney(500000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
---------------Ring
RegisterServerEvent('rev_jewels:sellring1')
AddEventHandler('rev_jewels:sellring1', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q1ring').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q1ring', 1)
		xPlayer.addMoney(400) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellring2')
AddEventHandler('rev_jewels:sellring2', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q2ring').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q2ring', 1)
		xPlayer.addMoney(600) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellring3')
AddEventHandler('rev_jewels:sellring3', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q3ring').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q3ring', 1)
		xPlayer.addMoney(900) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellring4')
AddEventHandler('rev_jewels:sellring4', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q4ring').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q4ring', 1)
		xPlayer.addMoney(1500) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellring5')
AddEventHandler('rev_jewels:sellring5', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q5ring').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q5ring', 1)
		xPlayer.addMoney(4000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellring6')
AddEventHandler('rev_jewels:sellring6', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q6ring').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q6ring', 1)
		xPlayer.addMoney(6000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellring7')
AddEventHandler('rev_jewels:sellring7', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q7ring').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q7ring', 1)
		xPlayer.addMoney(10000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellring8')
AddEventHandler('rev_jewels:sellring8', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q8ring').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q8ring', 1)
		xPlayer.addMoney(18000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellring9')
AddEventHandler('rev_jewels:sellring9', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q9ring').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q9ring', 1)
		xPlayer.addMoney(35000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellring10')
AddEventHandler('rev_jewels:sellring10', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q10ring').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q10ring', 1)
		xPlayer.addMoney(300000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
---------------watch
RegisterServerEvent('rev_jewels:sellwatch1')
AddEventHandler('rev_jewels:sellwatch1', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q1goldwatch').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q1goldwatch', 1)
		xPlayer.addMoney(2000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellwatch2')
AddEventHandler('rev_jewels:sellwatch2', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q2goldwatch').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q2goldwatch', 1)
		xPlayer.addMoney(5000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellwatch3')
AddEventHandler('rev_jewels:sellwatch3', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q3goldwatch').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q3goldwatch', 1)
		xPlayer.addMoney(13000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellwatch4')
AddEventHandler('rev_jewels:sellwatch4', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q4goldwatch').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q4goldwatch', 1)
		xPlayer.addMoney(24000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellwatch5')
AddEventHandler('rev_jewels:sellwatch5', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q5goldwatch').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q5goldwatch', 1)
		xPlayer.addMoney(36000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellwatch6')
AddEventHandler('rev_jewels:sellwatch6', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q6goldwatch').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q6goldwatch', 1)
		xPlayer.addMoney(70000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellwatch7')
AddEventHandler('rev_jewels:sellwatch7', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q7goldwatch').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q7goldwatch', 1)
		xPlayer.addMoney(90000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellwatch8')
AddEventHandler('rev_jewels:sellwatch8', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q8goldwatch').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q8goldwatch', 1)
		xPlayer.addMoney(112000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellwatch9')
AddEventHandler('rev_jewels:sellwatch9', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q9goldwatch').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q9goldwatch', 1)
		xPlayer.addMoney(200000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)
RegisterServerEvent('rev_jewels:sellwatch10')
AddEventHandler('rev_jewels:sellwatch10', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('q10goldwatch').count
    
    if item > 0 then
        xPlayer.removeInventoryItem('q10goldwatch', 1)
		xPlayer.addMoney(600000) 
	else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have enough to sell!')
	end
end)

function notification(text)
	TriggerClientEvent('esx:showNotification', source, text)
end