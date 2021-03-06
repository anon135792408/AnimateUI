function showMessage(Message, Type, Interval, Timeout, Settings, Exit, Callback)
    if AnimateUI[Type] then
        return AnimateUI[Type](Message, Interval, Timeout, Settings, Exit, Callback)
    end

    return false
end

function removeMessage(ID)
    AnimateUI.Kill(ID)
end

TriggerEvent('chat:addSuggestion', '/AnimateUIDemo', 'help text', {
    { name="type", help="all | fade | zoom | slide | bounce | elastic | typewriter" }
}) 

RegisterCommand('AnimateUIDemo', function(source, args)
    Citizen.CreateThread(function()
        Citizen.Wait(2000)
        if args ~= nil then
            if args[1] == 'fade' then
                InitFadeAnimations()
            elseif args[1] == 'slide' then
                InitSlideAnimations()
            elseif args[1] == 'bounce' then
                InitBounceAnimations()
            elseif args[1] == 'elastic' then
                InitElasticAnimations()
            elseif args[1] == 'zoom' then
                InitZoomAnimations()
            elseif args[1] == 'typewriter' then
                InitTypewriterAnimations()
            elseif args[1] == 'all' then
                InitDemo()
            end
        end  
    end)
end)