local Keys = {
 ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
 ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
 ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
 ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
 ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
 ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
 ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
 ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
 ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}
   
ESX = nil
local PlayerData              = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
		PlayerData = ESX.GetPlayerData()
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

function hintToDisplay(text)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

--[[local blips = {
      {title="Pawnshop", colour=4, id=133, x = 412.31, y = 314.11, z = 103.02}
}
 
      
Citizen.CreateThread(function()
    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)--]]
  
local gym = {
    {x = -630.91, y = -229.74, z = 38.06}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(gym) do
            DrawMarker(21, gym[k].x, gym[k].y, gym[k].z, 0, 0, 0, 0, 0, 0, 0.301, 0.301, 0.3001, 0, 153, 255, 255, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(gym) do
		
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, gym[k].x, gym[k].y, gym[k].z)

            if dist <= 0.5 then
				hintToDisplay('press ~INPUT_CONTEXT~ to open ~b~Jewel Work bench~w~')
				
				if IsControlJustPressed(0, Keys['E']) then
					OpenJewelMenu()
				end			
            end
        end
    end
end)

function OpenJewelMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'jewel_menu',
        {
            title    = 'Jewelry/Gem Menu',
            align    = "top",
            elements = {
                {label = 'Appraise', value = 'sell'},
                {label = 'Sell Diamonds', value = 'dia'},
                {label = 'Sell Rubys', value = 'rub'},
                {label = 'Sell Gold Necklace', value = 'gneck'},
                {label = 'Sell Necklace', value = 'neck'},
                {label = 'Sell Ring', value = 'ring'},
                {label = 'Sell Watch', value = 'watch'},
            }
        },
        function(data, menu)
            if data.current.value == 'dia' then
				OpenDiaMenu()
            elseif data.current.value == 'sell' then
				OpenAPRMenu()
            elseif data.current.value == 'rub' then
                OpenRubMenu()
            elseif data.current.value == 'gneck' then
                OpenGneckMenu()
            elseif data.current.value == 'neck' then
                OpenNeckMenu()
            elseif data.current.value == 'ring' then
                OpenRingMenu()
            elseif data.current.value == 'watch' then
                OpenWatchMenu()
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end

function OpenAPRMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'jewel_menu',
        {
            title    = 'what do you want to appraise?',
            align    = "top",
            elements = {
                {label = 'Cut Diamonds ', value = 'cut_diamond'},
                {label = 'Cut Rubies ', value = 'cut_rubies'},
                {label = 'Appraise Gold Necklace', value = 'aprgoldneck'},
                {label = 'Appraise Necklace ', value = 'aprneck'},
                {label = 'Appraise Ring ', value = 'aprring'},
                {label = 'Appraise Watch ', value = 'aprwatch'},
            }
        },
        function(data, menu)
            if data.current.value == 'cut_diamond' then
				TriggerServerEvent('rev_jewels:cutdia')
            elseif data.current.value == 'cut_rubies' then
				TriggerServerEvent('rev_jewels:cutrub')
            elseif data.current.value == 'aprgoldneck' then
				TriggerServerEvent('rev_jewels:aprgoldneck')
            elseif data.current.value == 'aprneck' then
				TriggerServerEvent('rev_jewels:aprneck')
            elseif data.current.value == 'aprneck' then
				TriggerServerEvent('rev_jewels:aprneck')
            elseif data.current.value == 'aprring' then
				TriggerServerEvent('rev_jewels:aprring')
            elseif data.current.value == 'aprwatch' then
				TriggerServerEvent('rev_jewels:aprwatch')
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end

function OpenDiaMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'jewel_menu',
        {
            title    = 'what do you want to sell?',
            align    = "top",
            elements = {
                {label = 'Q1 Diamond ', value = 'q1d'},
                {label = 'Q2 Diamond ', value = 'q2d'},
                {label = 'Q3 Diamond ', value = 'q3d'},
                {label = 'Q4 Diamond ', value = 'q4d'},
                {label = 'Q5 Diamond ', value = 'q5d'},
                {label = 'Q6 Diamond ', value = 'q6d'},
                {label = 'Q7 Diamond ', value = 'q7d'},
                {label = 'Q8 Diamond ', value = 'q8d'},
                {label = 'Q9 Diamond ', value = 'q9d'},
                {label = 'Q10 Diamond ', value = 'q10d'},
            }
        },
        function(data, menu)
            if data.current.value == 'q1d' then
				TriggerServerEvent('rev_jewels:selldia1')
            elseif data.current.value == 'q2d' then
				TriggerServerEvent('rev_jewels:selldia2')
            elseif data.current.value == 'q3d' then
				TriggerServerEvent('rev_jewels:selldia3')
            elseif data.current.value == 'q4d' then
				TriggerServerEvent('rev_jewels:selldia4')
            elseif data.current.value == 'q5d' then
				TriggerServerEvent('rev_jewels:selldia5')
            elseif data.current.value == 'q6d' then
				TriggerServerEvent('rev_jewels:selldia6')
            elseif data.current.value == 'q7d' then
				TriggerServerEvent('rev_jewels:selldia7')
            elseif data.current.value == 'q8d' then
				TriggerServerEvent('rev_jewels:selldia8')
            elseif data.current.value == 'q9d' then
				TriggerServerEvent('rev_jewels:selldia9')
            elseif data.current.value == 'q10d' then
				TriggerServerEvent('rev_jewels:selldia10')
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end
function OpenRubMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'jewel_menu',
        {
            title    = 'what do you want to sell?',
            align    = "top",
            elements = {
                {label = 'Q1 Ruby ', value = 'q1r'},
                {label = 'Q2 Ruby ', value = 'q2r'},
                {label = 'Q3 Ruby ', value = 'q3r'},
                {label = 'Q4 Ruby ', value = 'q4r'},
                {label = 'Q5 Ruby ', value = 'q5r'},
                {label = 'Q6 Ruby ', value = 'q6r'},
                {label = 'Q7 Ruby ', value = 'q7r'},
                {label = 'Q8 Ruby ', value = 'q8r'},
                {label = 'Q9 Ruby ', value = 'q9r'},
                {label = 'Q10 Ruby ', value = 'q10r'},
            }
        },
        function(data, menu)
            if data.current.value == 'q1r' then
				TriggerServerEvent('rev_jewels:sellrub1')
            elseif data.current.value == 'q2r' then
				TriggerServerEvent('rev_jewels:sellrub2')
            elseif data.current.value == 'q3r' then
				TriggerServerEvent('rev_jewels:sellrub3')
            elseif data.current.value == 'q4r' then
				TriggerServerEvent('rev_jewels:sellrub4')
            elseif data.current.value == 'q5r' then
				TriggerServerEvent('rev_jewels:sellrub5')
            elseif data.current.value == 'q6r' then
				TriggerServerEvent('rev_jewels:sellrub6')
            elseif data.current.value == 'q7r' then
				TriggerServerEvent('rev_jewels:sellrub7')
            elseif data.current.value == 'q8r' then
				TriggerServerEvent('rev_jewels:sellrub8')
            elseif data.current.value == 'q9r' then
				TriggerServerEvent('rev_jewels:sellrub9')
            elseif data.current.value == 'q10r' then
				TriggerServerEvent('rev_jewels:sellrub10')
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end
function OpenGneckMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'jewel_menu',
        {
            title    = 'what do you want to sell?',
            align    = "top",
            elements = {
                {label = 'Q1 Gold Necklace ', value = 'q1gn'},
                {label = 'Q2 Gold Necklace ', value = 'q2gn'},
                {label = 'Q3 Gold Necklace ', value = 'q3gn'},
                {label = 'Q4 Gold Necklace ', value = 'q4gn'},
                {label = 'Q5 Gold Necklace ', value = 'q5gn'},
                {label = 'Q6 Gold Necklace ', value = 'q6gn'},
                {label = 'Q7 Gold Necklace ', value = 'q7gn'},
                {label = 'Q8 Gold Necklace ', value = 'q8gn'},
                {label = 'Q9 Gold Necklace ', value = 'q9gn'},
                {label = 'Q10 Gold Necklace ', value = 'q10gn'},
            }
        },
        function(data, menu)
            if data.current.value == 'q1gn' then
				TriggerServerEvent('rev_jewels:sellgneck1')
            elseif data.current.value == 'q2gn' then
				TriggerServerEvent('rev_jewels:sellgneck2')
            elseif data.current.value == 'q3gn' then
				TriggerServerEvent('rev_jewels:sellgneck3')
            elseif data.current.value == 'q4gn' then
				TriggerServerEvent('rev_jewels:sellgneck4')
            elseif data.current.value == 'q5gn' then
				TriggerServerEvent('rev_jewels:sellgneck5')
            elseif data.current.value == 'q6gn' then
				TriggerServerEvent('rev_jewels:sellgneck6')
            elseif data.current.value == 'q7gn' then
				TriggerServerEvent('rev_jewels:sellgneck7')
            elseif data.current.value == 'q8gn' then
				TriggerServerEvent('rev_jewels:sellgneck8')
            elseif data.current.value == 'q9gn' then
				TriggerServerEvent('rev_jewels:sellgneck9')
            elseif data.current.value == 'q10gn' then
				TriggerServerEvent('rev_jewels:sellgneck10')
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end
function OpenNeckMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'jewel_menu',
        {
            title    = 'what do you want to sell?',
            align    = "top",
            elements = {
                {label = 'Q1 Necklace ', value = 'q1n'},
                {label = 'Q2 Necklace ', value = 'q2n'},
                {label = 'Q3 Necklace ', value = 'q3n'},
                {label = 'Q4 Necklace ', value = 'q4n'},
                {label = 'Q5 Necklace ', value = 'q5n'},
                {label = 'Q6 Necklace ', value = 'q6n'},
                {label = 'Q7 Necklace ', value = 'q7n'},
                {label = 'Q8 Necklace ', value = 'q8n'},
                {label = 'Q9 Necklace ', value = 'q9n'},
                {label = 'Q10 Necklace ', value = 'q10n'},
            }
        },
        function(data, menu)
            if data.current.value == 'q1n' then
				TriggerServerEvent('rev_jewels:sellgneck1')
            elseif data.current.value == 'q2n' then
				TriggerServerEvent('rev_jewels:sellgneck2')
            elseif data.current.value == 'q3n' then
				TriggerServerEvent('rev_jewels:sellgneck3')
            elseif data.current.value == 'q4n' then
				TriggerServerEvent('rev_jewels:sellgneck4')
            elseif data.current.value == 'q5n' then
				TriggerServerEvent('rev_jewels:sellgneck5')
            elseif data.current.value == 'q6n' then
				TriggerServerEvent('rev_jewels:sellgneck6')
            elseif data.current.value == 'q7n' then
				TriggerServerEvent('rev_jewels:sellgneck7')
            elseif data.current.value == 'q8n' then
				TriggerServerEvent('rev_jewels:sellgneck8')
            elseif data.current.value == 'q9n' then
				TriggerServerEvent('rev_jewels:sellgneck9')
            elseif data.current.value == 'q10n' then
				TriggerServerEvent('rev_jewels:sellgneck10')
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end
function OpenRingMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'jewel_menu',
        {
            title    = 'what do you want to sell?',
            align    = "top",
            elements = {
                {label = 'Q1 Ring ', value = 'q1ri'},
                {label = 'Q2 Ring ', value = 'q2ri'},
                {label = 'Q3 Ring ', value = 'q3ri'},
                {label = 'Q4 Ring ', value = 'q4ri'},
                {label = 'Q5 Ring ', value = 'q5ri'},
                {label = 'Q6 Ring ', value = 'q6ri'},
                {label = 'Q7 Ring ', value = 'q7ri'},
                {label = 'Q8 Ring ', value = 'q8ri'},
                {label = 'Q9 Ring ', value = 'q9ri'},
                {label = 'Q10 Ring ', value = 'q10ri'},
            }
        },
        function(data, menu)
            if data.current.value == 'q1ri' then
				TriggerServerEvent('rev_jewels:sellring1')
            elseif data.current.value == 'q2ri' then
				TriggerServerEvent('rev_jewels:sellring2')
            elseif data.current.value == 'q3ri' then
				TriggerServerEvent('rev_jewels:sellring3')
            elseif data.current.value == 'q4ri' then
				TriggerServerEvent('rev_jewels:sellring4')
            elseif data.current.value == 'q5ri' then
				TriggerServerEvent('rev_jewels:sellring5')
            elseif data.current.value == 'q6ri' then
				TriggerServerEvent('rev_jewels:sellring6')
            elseif data.current.value == 'q7ri' then
				TriggerServerEvent('rev_jewels:sellring7')
            elseif data.current.value == 'q8ri' then
				TriggerServerEvent('rev_jewels:sellring8')
            elseif data.current.value == 'q9ri' then
				TriggerServerEvent('rev_jewels:sellring9')
            elseif data.current.value == 'q10ri' then
				TriggerServerEvent('rev_jewels:sellring10')
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end
function OpenWatchMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'jewel_menu',
        {
            title    = 'what do you want to sell?',
            align    = "top",
            elements = {
                {label = 'Q1 Watch ', value = 'q1w'},
                {label = 'Q2 Watch ', value = 'q2w'},
                {label = 'Q3 Watch ', value = 'q3w'},
                {label = 'Q4 Watch ', value = 'q4w'},
                {label = 'Q5 Watch ', value = 'q5w'},
                {label = 'Q6 Watch ', value = 'q6w'},
                {label = 'Q7 Watch ', value = 'q7w'},
                {label = 'Q8 Watch ', value = 'q8w'},
                {label = 'Q9 Watch ', value = 'q9w'},
                {label = 'Q10 Watch ', value = 'q10w'},
            }
        },
        function(data, menu)
            if data.current.value == 'q1w' then
				TriggerServerEvent('rev_jewels:sellwatch1')
            elseif data.current.value == 'q2w' then
				TriggerServerEvent('rev_jewels:sellwatch2')
            elseif data.current.value == 'q3w' then
				TriggerServerEvent('rev_jewels:sellwatch3')
            elseif data.current.value == 'q4w' then
				TriggerServerEvent('rev_jewels:sellwatch4')
            elseif data.current.value == 'q5w' then
				TriggerServerEvent('rev_jewels:sellwatch5')
            elseif data.current.value == 'q6w' then
				TriggerServerEvent('rev_jewels:sellwatch6')
            elseif data.current.value == 'q7w' then
				TriggerServerEvent('rev_jewels:sellwatch7')
            elseif data.current.value == 'q8w' then
				TriggerServerEvent('rev_jewels:sellwatch8')
            elseif data.current.value == 'q9w' then
				TriggerServerEvent('rev_jewels:sellwatch9')
            elseif data.current.value == 'q10w' then
				TriggerServerEvent('rev_jewels:sellwatch10')
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end





